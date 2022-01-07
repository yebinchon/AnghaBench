
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vge_softc {int dummy; } ;


 int VGE_LOCK (struct vge_softc*) ;
 int VGE_UNLOCK (struct vge_softc*) ;
 int vge_init_locked (struct vge_softc*) ;

__attribute__((used)) static void
vge_init(void *xsc)
{
 struct vge_softc *sc = xsc;

 VGE_LOCK(sc);
 vge_init_locked(sc);
 VGE_UNLOCK(sc);
}
