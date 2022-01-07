
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct twsi_softc {int mutex; int reg_data; int reg_status; } ;
typedef int device_t ;


 int DELAY (int) ;
 int IIC_ESTATUS ;
 int IIC_ETIMEOUT ;
 int IIC_NOERR ;
 int TWSI_CONTROL_ACK ;
 int TWSI_CONTROL_IFLG ;
 void* TWSI_READ (struct twsi_softc*,int ) ;
 int TWSI_STATUS_DATA_RD_ACK ;
 int TWSI_STATUS_DATA_RD_NOACK ;
 int debugf (int ,char*,int) ;
 struct twsi_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int twsi_clear_iflg (struct twsi_softc*) ;
 int twsi_control_clear (struct twsi_softc*,int ) ;
 int twsi_control_set (struct twsi_softc*,int ) ;
 scalar_t__ twsi_poll_ctrl (struct twsi_softc*,int,int ) ;

__attribute__((used)) static int
twsi_read(device_t dev, char *buf, int len, int *read, int last, int delay)
{
 struct twsi_softc *sc;
 uint32_t status;
 int last_byte, rv;

 sc = device_get_softc(dev);

 mtx_lock(&sc->mutex);
 *read = 0;
 while (*read < len) {




  last_byte = ((*read == len - 1) && last) ? 1 : 0;
  if (last_byte)
   twsi_control_clear(sc, TWSI_CONTROL_ACK);
  else
   twsi_control_set(sc, TWSI_CONTROL_ACK);

  twsi_clear_iflg(sc);
  DELAY(1000);

  if (twsi_poll_ctrl(sc, delay, TWSI_CONTROL_IFLG)) {
   debugf(dev, "timeout reading data (delay=%d)\n", delay);
   rv = IIC_ETIMEOUT;
   goto out;
  }

  status = TWSI_READ(sc, sc->reg_status);
  if (status != (last_byte ?
      TWSI_STATUS_DATA_RD_NOACK : TWSI_STATUS_DATA_RD_ACK)) {
   debugf(dev, "wrong status (%02x) while reading\n", status);
   rv = IIC_ESTATUS;
   goto out;
  }

  *buf++ = TWSI_READ(sc, sc->reg_data);
  (*read)++;
 }
 rv = IIC_NOERR;
out:
 mtx_unlock(&sc->mutex);
 return (rv);
}
