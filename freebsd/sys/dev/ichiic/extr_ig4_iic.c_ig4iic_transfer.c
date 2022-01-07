
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t uint32_t ;
struct iic_msg {int flags; scalar_t__ len; int slave; int buf; } ;
struct TYPE_12__ {int last_slave; int call_lock; int dev; int slave_valid; } ;
typedef TYPE_1__ ig4iic_softc_t ;
typedef int device_t ;


 int EINVAL ;
 int IG4_INTR_STOP_DET ;
 int IG4_REG_CLR_INTR ;
 int IG4_REG_CLR_TX_ABORT ;
 int IG4_REG_DATA_CMD ;
 int IG4_REG_I2C_STA ;
 int IG4_REG_TX_ABRT_SOURCE ;
 int IG4_STATUS_RX_NOTEMPTY ;
 int IIC_ENOTSUPP ;
 int IIC_M_NOSTART ;
 int IIC_M_NOSTOP ;
 int IIC_M_RD ;
 scalar_t__ bootverbose ;
 TYPE_1__* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int ig4_dump ;
 int ig4iic_dump (TYPE_1__*) ;
 int ig4iic_read (TYPE_1__*,int ,scalar_t__,int,int) ;
 int ig4iic_set_config (TYPE_1__*,int) ;
 int ig4iic_write (TYPE_1__*,int ,scalar_t__,int,int) ;
 scalar_t__ ig4iic_xfer_abort (TYPE_1__*) ;
 scalar_t__ ig4iic_xfer_is_started (TYPE_1__*) ;
 int ig4iic_xfer_start (TYPE_1__*,int,int) ;
 int reg_read (TYPE_1__*,int ) ;
 int sx_unlock (int *) ;
 int sx_xlock (int *) ;
 scalar_t__ sx_xlocked (int *) ;
 int wait_intr (TYPE_1__*,int ) ;

int
ig4iic_transfer(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
 ig4iic_softc_t *sc = device_get_softc(dev);
 const char *reason = ((void*)0);
 uint32_t i;
 int error;
 int unit;
 bool rpstart;
 bool stop;
 bool allocated;
 for (i = 0; i < nmsgs; i++) {
  if (msgs[i].len == 0) {
   reason = "message with no data";
   break;
  }
  if (i > 0) {
   if ((msgs[i].flags & IIC_M_NOSTART) != 0 &&
       (msgs[i - 1].flags & IIC_M_NOSTOP) == 0) {
    reason = "stop not followed by start";
    break;
   }
   if ((msgs[i - 1].flags & IIC_M_NOSTOP) != 0 &&
       msgs[i].slave != msgs[i - 1].slave) {
    reason = "change of slave without stop";
    break;
   }
   if ((msgs[i].flags & IIC_M_NOSTART) != 0 &&
       (msgs[i].flags & IIC_M_RD) !=
       (msgs[i - 1].flags & IIC_M_RD)) {
    reason = "change of direction without repeated"
        " start";
    break;
   }
  }
 }
 if (reason != ((void*)0)) {
  if (bootverbose)
   device_printf(dev, "%s\n", reason);
  return (IIC_ENOTSUPP);
 }


 allocated = sx_xlocked(&sc->call_lock) != 0;
 if (!allocated)
  sx_xlock(&sc->call_lock);


 if (ig4_dump) {
  unit = device_get_unit(dev);
  if (ig4_dump & (1 << unit)) {
   ig4_dump &= ~(1 << unit);
   ig4iic_dump(sc);
  }
 }





 reg_read(sc, IG4_REG_CLR_TX_ABORT);

 rpstart = 0;
 error = 0;
 for (i = 0; i < nmsgs; i++) {
  if ((msgs[i].flags & IIC_M_NOSTART) == 0) {
   error = ig4iic_xfer_start(sc, msgs[i].slave, rpstart);
  } else {
   if (!sc->slave_valid ||
       (msgs[i].slave >> 1) != sc->last_slave) {
    device_printf(dev, "start condition suppressed"
        "but slave address is not set up");
    error = EINVAL;
    break;
   }
   rpstart = 0;
  }
  if (error != 0)
   break;

  stop = (msgs[i].flags & IIC_M_NOSTOP) == 0;
  if (msgs[i].flags & IIC_M_RD)
   error = ig4iic_read(sc, msgs[i].buf, msgs[i].len,
       rpstart, stop);
  else
   error = ig4iic_write(sc, msgs[i].buf, msgs[i].len,
       rpstart, stop);


  if (stop && error == 0) {
   error = wait_intr(sc, IG4_INTR_STOP_DET);
   if (error == 0)
    reg_read(sc, IG4_REG_CLR_INTR);
  }

  if (error != 0) {





   if (ig4iic_xfer_is_started(sc) &&
       ig4iic_xfer_abort(sc) != 0) {
    device_printf(sc->dev, "Failed to abort "
        "transfer. Do the controller reset.\n");
    ig4iic_set_config(sc, 1);
   } else {
    while (reg_read(sc, IG4_REG_I2C_STA) &
        IG4_STATUS_RX_NOTEMPTY)
     reg_read(sc, IG4_REG_DATA_CMD);
    reg_read(sc, IG4_REG_TX_ABRT_SOURCE);
    reg_read(sc, IG4_REG_CLR_INTR);
   }
   break;
  }

  rpstart = !stop;
 }

 if (!allocated)
  sx_unlock(&sc->call_lock);
 return (error);
}
