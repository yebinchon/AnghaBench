
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct glxiic_softc {int addr; int iicbus; int smb_res; } ;


 int GLXIIC_ASSERT_LOCKED (struct glxiic_softc*) ;
 int GLXIIC_DEBUG_LOG (char*) ;
 int GLXIIC_SMB_CTRL_STS ;
 int GLXIIC_SMB_CTRL_STS_GCMTCH_BIT ;
 int GLXIIC_SMB_CTRL_STS_MATCH_BIT ;
 int GLXIIC_SMB_STS_XMIT_BIT ;
 int GLXIIC_STATE_SLAVE_RX ;
 int GLXIIC_STATE_SLAVE_TX ;
 int IIC_ESTATUS ;
 int IIC_NOERR ;
 int INTR_GENERAL ;
 int INTR_START ;
 int LSB ;
 int bus_read_1 (int ,int ) ;
 int glxiic_set_state_locked (struct glxiic_softc*,int ) ;
 int iicbus_intr (int ,int ,int*) ;

__attribute__((used)) static int
glxiic_handle_slave_match_locked(struct glxiic_softc *sc, uint8_t status)
{
 uint8_t ctrl_sts, addr;

 GLXIIC_ASSERT_LOCKED(sc);

 ctrl_sts = bus_read_1(sc->smb_res, GLXIIC_SMB_CTRL_STS);

 if ((ctrl_sts & GLXIIC_SMB_CTRL_STS_MATCH_BIT) != 0) {
  if ((status & GLXIIC_SMB_STS_XMIT_BIT) != 0) {
   addr = sc->addr | LSB;
   glxiic_set_state_locked(sc,
       GLXIIC_STATE_SLAVE_TX);
  } else {
   addr = sc->addr & ~LSB;
   glxiic_set_state_locked(sc,
       GLXIIC_STATE_SLAVE_RX);
  }
  iicbus_intr(sc->iicbus, INTR_START, &addr);
 } else if ((ctrl_sts & GLXIIC_SMB_CTRL_STS_GCMTCH_BIT) != 0) {
  addr = 0;
  glxiic_set_state_locked(sc, GLXIIC_STATE_SLAVE_RX);
  iicbus_intr(sc->iicbus, INTR_GENERAL, &addr);
 } else {
  GLXIIC_DEBUG_LOG("unknown slave match");
  return (IIC_ESTATUS);
 }

 return (IIC_NOERR);
}
