
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct glxiic_softc {size_t state; int error; int addr; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ master; } ;


 int GLXIIC_LOCK (struct glxiic_softc*) ;
 int GLXIIC_STATE_IDLE ;
 int GLXIIC_UNLOCK (struct glxiic_softc*) ;
 int GLXIIC_WAKEUP (struct glxiic_softc*) ;
 int IIC_ESTATUS ;
 int IIC_NOERR ;
 struct glxiic_softc* device_get_softc (int ) ;
 int glxiic_set_state_locked (struct glxiic_softc*,int ) ;
 int glxiic_smb_disable (struct glxiic_softc*) ;
 int glxiic_smb_enable (struct glxiic_softc*,int ,int ) ;
 TYPE_1__* glxiic_state_table ;

__attribute__((used)) static int
glxiic_reset(device_t dev, u_char speed, u_char addr, u_char *oldaddr)
{
 struct glxiic_softc *sc;

 sc = device_get_softc(dev);

 GLXIIC_LOCK(sc);

 if (oldaddr != ((void*)0))
  *oldaddr = sc->addr;
 sc->addr = addr;


 glxiic_smb_disable(sc);
 glxiic_smb_enable(sc, speed, addr);

 if (glxiic_state_table[sc->state].master) {
  sc->error = IIC_ESTATUS;
  GLXIIC_WAKEUP(sc);
 }
 glxiic_set_state_locked(sc, GLXIIC_STATE_IDLE);

 GLXIIC_UNLOCK(sc);

 return (IIC_NOERR);
}
