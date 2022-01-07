
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union vxlan_sockaddr {int dummy; } vxlan_sockaddr ;
struct vxlan_socket {union vxlan_sockaddr vxlso_laddr; int * vxlso_vni_hash; int vxlso_refcnt; int vxlso_lock; } ;


 int LIST_INIT (int *) ;
 int M_VXLAN ;
 int M_WAITOK ;
 int M_ZERO ;
 int VXLAN_SO_VNI_HASH_SIZE ;
 struct vxlan_socket* malloc (int,int ,int) ;
 int refcount_init (int *,int ) ;
 int rm_init (int *,char*) ;

__attribute__((used)) static struct vxlan_socket *
vxlan_socket_alloc(const union vxlan_sockaddr *sa)
{
 struct vxlan_socket *vso;
 int i;

 vso = malloc(sizeof(*vso), M_VXLAN, M_WAITOK | M_ZERO);
 rm_init(&vso->vxlso_lock, "vxlansorm");
 refcount_init(&vso->vxlso_refcnt, 0);
 for (i = 0; i < VXLAN_SO_VNI_HASH_SIZE; i++)
  LIST_INIT(&vso->vxlso_vni_hash[i]);
 vso->vxlso_laddr = *sa;

 return (vso);
}
