
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_socket {int dummy; } ;


 int LIST_REMOVE (struct vxlan_socket*,int ) ;
 int VXLAN_LIST_LOCK () ;
 int VXLAN_LIST_UNLOCK () ;
 int VXLAN_SO_RELEASE (struct vxlan_socket*) ;
 int vxlan_socket_destroy (struct vxlan_socket*) ;
 int vxlso_entry ;

__attribute__((used)) static void
vxlan_socket_release(struct vxlan_socket *vso)
{
 int destroy;

 VXLAN_LIST_LOCK();
 destroy = VXLAN_SO_RELEASE(vso);
 if (destroy != 0)
  LIST_REMOVE(vso, vxlso_entry);
 VXLAN_LIST_UNLOCK();

 if (destroy != 0)
  vxlan_socket_destroy(vso);
}
