
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct glxiic_softc {scalar_t__ nmsgs; int error; TYPE_1__* msg; int smb_res; } ;
struct TYPE_2__ {int flags; } ;


 int GLXIIC_ASSERT_LOCKED (struct glxiic_softc*) ;
 int GLXIIC_DEBUG_LOG (char*) ;
 int GLXIIC_SMB_CTRL1 ;
 int GLXIIC_SMB_CTRL1_START_BIT ;
 int GLXIIC_SMB_STS_BER_BIT ;
 int GLXIIC_SMB_STS_MASTER_BIT ;
 int GLXIIC_SMB_STS_NEGACK_BIT ;
 int GLXIIC_STATE_IDLE ;
 int GLXIIC_STATE_MASTER_ADDR ;
 int GLXIIC_WAKEUP (struct glxiic_softc*) ;
 int IIC_EBUSERR ;
 int IIC_ENOACK ;
 int IIC_ESTATUS ;
 int IIC_M_NOSTOP ;
 int IIC_NOERR ;
 int bus_read_1 (int ,int ) ;
 int bus_write_1 (int ,int ,int) ;
 int glxiic_set_state_locked (struct glxiic_softc*,int ) ;
 int glxiic_stop_locked (struct glxiic_softc*) ;

__attribute__((used)) static int
glxiic_state_master_stop_callback(struct glxiic_softc *sc, uint8_t status)
{
 uint8_t ctrl1;

 GLXIIC_ASSERT_LOCKED(sc);

 if ((status & GLXIIC_SMB_STS_BER_BIT) != 0) {
  GLXIIC_DEBUG_LOG("bus error in master stop");
  return (IIC_EBUSERR);
 }

 if ((status & GLXIIC_SMB_STS_MASTER_BIT) == 0) {
  GLXIIC_DEBUG_LOG("not bus master in master stop");
  return (IIC_ESTATUS);
 }

 if ((status & GLXIIC_SMB_STS_NEGACK_BIT) != 0) {
  GLXIIC_DEBUG_LOG("slave nack in master stop");
  return (IIC_ENOACK);
 }

 if (--sc->nmsgs > 0) {

  if ((sc->msg->flags & IIC_M_NOSTOP) == 0) {
   glxiic_stop_locked(sc);
  }

  ctrl1 = bus_read_1(sc->smb_res, GLXIIC_SMB_CTRL1);
  bus_write_1(sc->smb_res, GLXIIC_SMB_CTRL1,
      ctrl1 | GLXIIC_SMB_CTRL1_START_BIT);

  glxiic_set_state_locked(sc, GLXIIC_STATE_MASTER_ADDR);
  sc->msg++;
 } else {

  glxiic_stop_locked(sc);
  glxiic_set_state_locked(sc, GLXIIC_STATE_IDLE);
  sc->error = IIC_NOERR;
  GLXIIC_WAKEUP(sc);
 }

 return (IIC_NOERR);
}
