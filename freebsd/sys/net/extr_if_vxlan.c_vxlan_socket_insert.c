
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vxlan_socket {int dummy; } ;


 int LIST_INSERT_HEAD (int *,struct vxlan_socket*,int ) ;
 int VXLAN_LIST_LOCK () ;
 int VXLAN_LIST_UNLOCK () ;
 int VXLAN_SO_ACQUIRE (struct vxlan_socket*) ;
 int vxlan_socket_list ;
 int vxlso_entry ;

__attribute__((used)) static void
vxlan_socket_insert(struct vxlan_socket *vso)
{

 VXLAN_LIST_LOCK();
 VXLAN_SO_ACQUIRE(vso);
 LIST_INSERT_HEAD(&vxlan_socket_list, vso, vxlso_entry);
 VXLAN_LIST_UNLOCK();
}
