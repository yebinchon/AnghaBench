
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int vxl_callout; } ;


 int VXLAN_LOCK_WASSERT (struct vxlan_softc*) ;
 int callout_schedule (int *,int) ;
 int hz ;
 int vxlan_ftable_expire (struct vxlan_softc*) ;
 int vxlan_ftable_prune_period ;

__attribute__((used)) static void
vxlan_timer(void *xsc)
{
 struct vxlan_softc *sc;

 sc = xsc;
 VXLAN_LOCK_WASSERT(sc);

 vxlan_ftable_expire(sc);
 callout_schedule(&sc->vxl_callout, vxlan_ftable_prune_period * hz);
}
