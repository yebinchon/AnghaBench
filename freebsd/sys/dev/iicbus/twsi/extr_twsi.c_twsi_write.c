
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct twsi_softc {int mutex; int reg_status; int reg_data; } ;
typedef int device_t ;


 int DELAY (int) ;
 int IIC_ESTATUS ;
 int IIC_ETIMEOUT ;
 int IIC_NOERR ;
 int TWSI_CONTROL_IFLG ;
 int TWSI_READ (struct twsi_softc*,int ) ;
 int TWSI_STATUS_DATA_WR_ACK ;
 int TWSI_WRITE (struct twsi_softc*,int ,int ) ;
 int debugf (int ,char*,int) ;
 struct twsi_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int twsi_clear_iflg (struct twsi_softc*) ;
 scalar_t__ twsi_poll_ctrl (struct twsi_softc*,int,int ) ;

__attribute__((used)) static int
twsi_write(device_t dev, const char *buf, int len, int *sent, int timeout)
{
 struct twsi_softc *sc;
 uint32_t status;
 int rv;

 sc = device_get_softc(dev);

 mtx_lock(&sc->mutex);
 *sent = 0;
 while (*sent < len) {
  TWSI_WRITE(sc, sc->reg_data, *buf++);

  twsi_clear_iflg(sc);
  DELAY(1000);
  if (twsi_poll_ctrl(sc, timeout, TWSI_CONTROL_IFLG)) {
   debugf(dev, "timeout writing data (timeout=%d)\n", timeout);
   rv = IIC_ETIMEOUT;
   goto out;
  }

  status = TWSI_READ(sc, sc->reg_status);
  if (status != TWSI_STATUS_DATA_WR_ACK) {
   debugf(dev, "wrong status (%02x) while writing\n", status);
   rv = IIC_ESTATUS;
   goto out;
  }
  (*sent)++;
 }
 rv = IIC_NOERR;
out:
 mtx_unlock(&sc->mutex);
 return (rv);
}
