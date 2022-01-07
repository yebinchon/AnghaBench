
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int dummy; } ;


 scalar_t__ VXLAN_RELEASE (struct vxlan_softc*) ;
 int wakeup (struct vxlan_softc*) ;

__attribute__((used)) static void
vxlan_release(struct vxlan_softc *sc)
{







 if (VXLAN_RELEASE(sc) != 0)
  wakeup(sc);
}
