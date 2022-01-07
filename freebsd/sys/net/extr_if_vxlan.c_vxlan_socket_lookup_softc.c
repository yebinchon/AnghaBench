
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vxlan_softc {int dummy; } ;
struct vxlan_socket {int dummy; } ;
struct rm_priotracker {int dummy; } ;


 int VXLAN_SO_RLOCK (struct vxlan_socket*,struct rm_priotracker*) ;
 int VXLAN_SO_RUNLOCK (struct vxlan_socket*,struct rm_priotracker*) ;
 struct vxlan_softc* vxlan_socket_lookup_softc_locked (struct vxlan_socket*,int ) ;

__attribute__((used)) static struct vxlan_softc *
vxlan_socket_lookup_softc(struct vxlan_socket *vso, uint32_t vni)
{
 struct rm_priotracker tracker;
 struct vxlan_softc *sc;

 VXLAN_SO_RLOCK(vso, &tracker);
 sc = vxlan_socket_lookup_softc_locked(vso, vni);
 VXLAN_SO_RUNLOCK(vso, &tracker);

 return (sc);
}
