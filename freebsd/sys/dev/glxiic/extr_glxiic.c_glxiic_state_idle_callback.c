
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct glxiic_softc {int dummy; } ;


 int GLXIIC_ASSERT_LOCKED (struct glxiic_softc*) ;
 int GLXIIC_DEBUG_LOG (char*) ;
 int GLXIIC_SMB_STS_BER_BIT ;
 int GLXIIC_SMB_STS_NMATCH_BIT ;
 int IIC_EBUSERR ;
 int IIC_NOERR ;
 int glxiic_handle_slave_match_locked (struct glxiic_softc*,int) ;

__attribute__((used)) static int
glxiic_state_idle_callback(struct glxiic_softc *sc, uint8_t status)
{

 GLXIIC_ASSERT_LOCKED(sc);

 if ((status & GLXIIC_SMB_STS_BER_BIT) != 0) {
  GLXIIC_DEBUG_LOG("bus error in idle");
  return (IIC_EBUSERR);
 }

 if ((status & GLXIIC_SMB_STS_NMATCH_BIT) != 0) {
  return (glxiic_handle_slave_match_locked(sc, status));
 }

 return (IIC_NOERR);
}
