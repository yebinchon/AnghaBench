
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_flags; int vxl_lock; } ;


 int VXLAN_FLAG_TEARDOWN ;
 int VXLAN_LOCK_WASSERT (struct vxlan_softc*) ;
 int hz ;
 int rm_sleep (struct vxlan_softc*,int *,int ,char*,int ) ;

__attribute__((used)) static void
vxlan_teardown_wait(struct vxlan_softc *sc)
{

 VXLAN_LOCK_WASSERT(sc);
 while (sc->vxl_flags & VXLAN_FLAG_TEARDOWN)
  rm_sleep(sc, &sc->vxl_lock, 0, "vxltrn", hz);
}
