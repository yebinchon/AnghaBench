
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
struct glxiic_softc {size_t state; int addr; int iicbus; void* error; } ;
struct TYPE_2__ {scalar_t__ master; } ;


 int GLXIIC_DEBUG_LOG (char*,size_t) ;
 int GLXIIC_STATE_IDLE ;
 int GLXIIC_WAKEUP (struct glxiic_softc*) ;
 void* IIC_ETIMEOUT ;
 int IIC_UNKNOWN ;
 int INTR_ERROR ;
 int glxiic_set_state_locked (struct glxiic_softc*,int ) ;
 int glxiic_smb_disable (struct glxiic_softc*) ;
 int glxiic_smb_enable (struct glxiic_softc*,int ,int ) ;
 TYPE_1__* glxiic_state_table ;
 int iicbus_intr (int ,int ,void**) ;

__attribute__((used)) static void
glxiic_timeout(void *arg)
{
 struct glxiic_softc *sc;
 uint8_t error;

 sc = (struct glxiic_softc *)arg;

 GLXIIC_DEBUG_LOG("timeout in state %d", sc->state);

 if (glxiic_state_table[sc->state].master) {
  sc->error = IIC_ETIMEOUT;
  GLXIIC_WAKEUP(sc);
 } else {
  error = IIC_ETIMEOUT;
  iicbus_intr(sc->iicbus, INTR_ERROR, &error);
 }

 glxiic_smb_disable(sc);
 glxiic_smb_enable(sc, IIC_UNKNOWN, sc->addr);
 glxiic_set_state_locked(sc, GLXIIC_STATE_IDLE);
}
