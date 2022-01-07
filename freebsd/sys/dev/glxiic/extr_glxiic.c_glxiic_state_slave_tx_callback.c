
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct glxiic_softc {int smb_res; int iicbus; } ;


 int GLXIIC_ASSERT_LOCKED (struct glxiic_softc*) ;
 int GLXIIC_DEBUG_LOG (char*) ;
 int GLXIIC_SMB_SDA ;
 int GLXIIC_SMB_STS_BER_BIT ;
 int GLXIIC_SMB_STS_NEGACK_BIT ;
 int GLXIIC_SMB_STS_NMATCH_BIT ;
 int GLXIIC_SMB_STS_SDAST_BIT ;
 int GLXIIC_SMB_STS_SLVSTP_BIT ;
 int GLXIIC_STATE_IDLE ;
 int IIC_EBUSERR ;
 int IIC_ESTATUS ;
 int IIC_NOERR ;
 int INTR_NOACK ;
 int INTR_STOP ;
 int INTR_TRANSMIT ;
 int bus_write_1 (int ,int ,int) ;
 int glxiic_handle_slave_match_locked (struct glxiic_softc*,int) ;
 int glxiic_set_state_locked (struct glxiic_softc*,int ) ;
 int glxiic_start_timeout_locked (struct glxiic_softc*) ;
 int iicbus_intr (int ,int ,int*) ;

__attribute__((used)) static int
glxiic_state_slave_tx_callback(struct glxiic_softc *sc, uint8_t status)
{
 uint8_t data;

 GLXIIC_ASSERT_LOCKED(sc);

 if ((status & GLXIIC_SMB_STS_BER_BIT) != 0) {
  GLXIIC_DEBUG_LOG("bus error in slave tx");
  return (IIC_EBUSERR);
 }

 if ((status & GLXIIC_SMB_STS_SLVSTP_BIT) != 0) {
  iicbus_intr(sc->iicbus, INTR_STOP, ((void*)0));
  glxiic_set_state_locked(sc, GLXIIC_STATE_IDLE);
  return (IIC_NOERR);
 }

 if ((status & GLXIIC_SMB_STS_NEGACK_BIT) != 0) {
  iicbus_intr(sc->iicbus, INTR_NOACK, ((void*)0));
  return (IIC_NOERR);
 }

 if ((status & GLXIIC_SMB_STS_NMATCH_BIT) != 0) {

  return (glxiic_handle_slave_match_locked(sc, status));
 }

 if ((status & GLXIIC_SMB_STS_SDAST_BIT) == 0) {
  GLXIIC_DEBUG_LOG("not awaiting data in slave tx");
  return (IIC_ESTATUS);
 }

 iicbus_intr(sc->iicbus, INTR_TRANSMIT, &data);
 bus_write_1(sc->smb_res, GLXIIC_SMB_SDA, data);

 glxiic_start_timeout_locked(sc);

 return (IIC_NOERR);
}
