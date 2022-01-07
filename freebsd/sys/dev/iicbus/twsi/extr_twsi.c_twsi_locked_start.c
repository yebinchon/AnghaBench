
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;
struct twsi_softc {int reg_status; int reg_data; int reg_control; int mutex; } ;
typedef int int32_t ;
typedef int device_t ;


 int DELAY (int) ;
 int IIC_ENOACK ;
 int IIC_ESTATUS ;
 int IIC_ETIMEOUT ;
 int IIC_NOERR ;
 int MA_OWNED ;
 int TWSI_CONTROL_IFLG ;
 int TWSI_CONTROL_START ;
 int TWSI_READ (struct twsi_softc*,int ) ;
 int TWSI_STATUS_ADDR_R_ACK ;
 int TWSI_STATUS_ADDR_W_ACK ;
 int TWSI_STATUS_RPTD_START ;
 int TWSI_STATUS_START ;
 int TWSI_WRITE (struct twsi_softc*,int ,int) ;
 int debugf (int ,char*,...) ;
 int mtx_assert (int *,int ) ;
 int twsi_clear_iflg (struct twsi_softc*) ;
 int twsi_control_set (struct twsi_softc*,int ) ;
 scalar_t__ twsi_poll_ctrl (struct twsi_softc*,int,int) ;

__attribute__((used)) static int
twsi_locked_start(device_t dev, struct twsi_softc *sc, int32_t mask,
    u_char slave, int timeout)
{
 int read_access, iflg_set = 0;
 uint32_t status;

 mtx_assert(&sc->mutex, MA_OWNED);

 if (mask == TWSI_STATUS_RPTD_START)

  iflg_set = TWSI_READ(sc, sc->reg_control) & TWSI_CONTROL_IFLG;

 debugf(dev, "send start\n");
 twsi_control_set(sc, TWSI_CONTROL_START);

 if (mask == TWSI_STATUS_RPTD_START && iflg_set) {
  debugf(dev, "IFLG set, clearing (mask=%x)\n", mask);
  twsi_clear_iflg(sc);
 }





 DELAY(1000);

 if (twsi_poll_ctrl(sc, timeout, TWSI_CONTROL_IFLG)) {
  debugf(dev, "timeout sending %sSTART condition\n",
      mask == TWSI_STATUS_START ? "" : "repeated ");
  return (IIC_ETIMEOUT);
 }

 status = TWSI_READ(sc, sc->reg_status);
 debugf(dev, "status=%x\n", status);

 if (status != mask) {
  debugf(dev, "wrong status (%02x) after sending %sSTART condition\n",
      status, mask == TWSI_STATUS_START ? "" : "repeated ");
  return (IIC_ESTATUS);
 }

 TWSI_WRITE(sc, sc->reg_data, slave);
 twsi_clear_iflg(sc);
 DELAY(1000);

 if (twsi_poll_ctrl(sc, timeout, TWSI_CONTROL_IFLG)) {
  debugf(dev, "timeout sending slave address (timeout=%d)\n", timeout);
  return (IIC_ETIMEOUT);
 }

 read_access = (slave & 0x1) ? 1 : 0;
 status = TWSI_READ(sc, sc->reg_status);
 if (status != (read_access ?
     TWSI_STATUS_ADDR_R_ACK : TWSI_STATUS_ADDR_W_ACK)) {
  debugf(dev, "no ACK (status: %02x) after sending slave address\n",
      status);
  return (IIC_ENOACK);
 }

 return (IIC_NOERR);
}
