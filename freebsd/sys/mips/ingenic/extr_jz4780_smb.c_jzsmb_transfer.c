
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
typedef int uint16_t ;
struct jzsmb_softc {int busy; int * msg; scalar_t__ status; int mtx; } ;
struct iic_msg {scalar_t__ slave; int flags; } ;
typedef int device_t ;


 int IIC_M_RD ;
 int SMBCON ;
 int SMBCON_STPHLD ;
 int SMB_LOCK (struct jzsmb_softc*) ;
 int SMB_READ (struct jzsmb_softc*,int ) ;
 int SMB_UNLOCK (struct jzsmb_softc*) ;
 int SMB_WRITE (struct jzsmb_softc*,int ,int ) ;
 struct jzsmb_softc* device_get_softc (int ) ;
 int jzsmb_enable (struct jzsmb_softc*,int ) ;
 int jzsmb_reset_locked (int ,scalar_t__) ;
 int jzsmb_transfer_read (int ,struct iic_msg*) ;
 int jzsmb_transfer_write (int ,struct iic_msg*,int) ;
 int mtx_sleep (struct jzsmb_softc*,int *,int ,char*,int ) ;
 int wakeup (struct jzsmb_softc*) ;

__attribute__((used)) static int
jzsmb_transfer(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
 struct jzsmb_softc *sc;
 uint32_t n;
 uint16_t con;
 int error;

 sc = device_get_softc(dev);

 SMB_LOCK(sc);
 while (sc->busy)
  mtx_sleep(sc, &sc->mtx, 0, "i2cbuswait", 0);
 sc->busy = 1;
 sc->status = 0;

 for (n = 0; n < nmsgs; n++) {

  if (n == 0 || msgs[n].slave != msgs[n - 1].slave)
   jzsmb_reset_locked(dev, msgs[n].slave);


  if ((msgs[n].flags & IIC_M_RD) != 0)
   error = jzsmb_transfer_read(dev, &msgs[n]);
  else
   error = jzsmb_transfer_write(dev, &msgs[n],
       n < nmsgs - 1);

  if (error != 0)
   goto done;
 }

done:

 con = SMB_READ(sc, SMBCON);
 con &= ~SMBCON_STPHLD;
 SMB_WRITE(sc, SMBCON, con);


 jzsmb_enable(sc, 0);

 sc->msg = ((void*)0);
 sc->busy = 0;
 wakeup(sc);
 SMB_UNLOCK(sc);

 return (error);
}
