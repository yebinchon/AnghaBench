
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct vxlan_softc {size_t vxl_vni; } ;
struct vxlan_socket {int * vxlso_vni_hash; } ;


 int EEXIST ;
 int LIST_INSERT_HEAD (int *,struct vxlan_softc*,int ) ;
 int VXLAN_ACQUIRE (struct vxlan_softc*) ;
 size_t VXLAN_SO_VNI_HASH (size_t) ;
 int VXLAN_SO_WLOCK (struct vxlan_socket*) ;
 int VXLAN_SO_WUNLOCK (struct vxlan_socket*) ;
 int vxl_entry ;
 int vxlan_release (struct vxlan_softc*) ;
 struct vxlan_softc* vxlan_socket_lookup_softc_locked (struct vxlan_socket*,size_t) ;

__attribute__((used)) static int
vxlan_socket_insert_softc(struct vxlan_socket *vso, struct vxlan_softc *sc)
{
 struct vxlan_softc *tsc;
 uint32_t vni, hash;

 vni = sc->vxl_vni;
 hash = VXLAN_SO_VNI_HASH(vni);

 VXLAN_SO_WLOCK(vso);
 tsc = vxlan_socket_lookup_softc_locked(vso, vni);
 if (tsc != ((void*)0)) {
  VXLAN_SO_WUNLOCK(vso);
  vxlan_release(tsc);
  return (EEXIST);
 }

 VXLAN_ACQUIRE(sc);
 LIST_INSERT_HEAD(&vso->vxlso_vni_hash[hash], sc, vxl_entry);
 VXLAN_SO_WUNLOCK(vso);

 return (0);
}
