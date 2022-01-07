
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_softc {int dummy; } ;
struct vxlan_socket {int dummy; } ;


 int LIST_REMOVE (struct vxlan_softc*,int ) ;
 int VXLAN_SO_WLOCK (struct vxlan_socket*) ;
 int VXLAN_SO_WUNLOCK (struct vxlan_socket*) ;
 int vxl_entry ;
 int vxlan_release (struct vxlan_softc*) ;

__attribute__((used)) static void
vxlan_socket_remove_softc(struct vxlan_socket *vso, struct vxlan_softc *sc)
{

 VXLAN_SO_WLOCK(vso);
 LIST_REMOVE(sc, vxl_entry);
 VXLAN_SO_WUNLOCK(vso);

 vxlan_release(sc);
}
