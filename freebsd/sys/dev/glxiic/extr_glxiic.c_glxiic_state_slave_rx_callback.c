
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct glxiic_softc {int iicbus; int smb_res; } ;


 int GLXIIC_ASSERT_LOCKED (struct glxiic_softc*) ;
 int GLXIIC_DEBUG_LOG (char*) ;
 int GLXIIC_SMB_SDA ;
 int GLXIIC_SMB_STS_BER_BIT ;
 int GLXIIC_SMB_STS_NMATCH_BIT ;
 int GLXIIC_SMB_STS_SDAST_BIT ;
 int GLXIIC_SMB_STS_SLVSTP_BIT ;
 int GLXIIC_STATE_IDLE ;
 int IIC_EBUSERR ;
 int IIC_ESTATUS ;
 int IIC_NOERR ;
 int INTR_RECEIVE ;
 int INTR_STOP ;
 int bus_read_1 (int ,int ) ;
 int glxiic_handle_slave_match_locked (struct glxiic_softc*,int) ;
 int glxiic_set_state_locked (struct glxiic_softc*,int ) ;
 int glxiic_start_timeout_locked (struct glxiic_softc*) ;
 int iicbus_intr (int ,int ,int*) ;

__attribute__((used)) static int
glxiic_state_slave_rx_callback(struct glxiic_softc *sc, uint8_t status)
{
 uint8_t data;

 GLXIIC_ASSERT_LOCKED(sc);

 if ((status & GLXIIC_SMB_STS_BER_BIT) != 0) {
  GLXIIC_DEBUG_LOG("bus error in slave rx");
  return (IIC_EBUSERR);
 }

 if ((status & GLXIIC_SMB_STS_SLVSTP_BIT) != 0) {
  iicbus_intr(sc->iicbus, INTR_STOP, ((void*)0));
  glxiic_set_state_locked(sc, GLXIIC_STATE_IDLE);
  return (IIC_NOERR);
 }

 if ((status & GLXIIC_SMB_STS_NMATCH_BIT) != 0) {

  return (glxiic_handle_slave_match_locked(sc, status));
 }

 if ((status & GLXIIC_SMB_STS_SDAST_BIT) == 0) {
  GLXIIC_DEBUG_LOG("no pending data in slave rx");
  return (IIC_ESTATUS);
 }

 data = bus_read_1(sc->smb_res, GLXIIC_SMB_SDA);
 iicbus_intr(sc->iicbus, INTR_RECEIVE, &data);

 glxiic_start_timeout_locked(sc);

 return (IIC_NOERR);
}
