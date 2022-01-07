
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sin6_addr; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_6__ {TYPE_2__ sin_addr; } ;
union vxlan_sockaddr {TYPE_1__ in6; TYPE_3__ in4; } ;
struct vxlan_socket {int dummy; } ;
struct ifnet {int dummy; } ;


 int ENOMEM ;
 int INADDR_ANY ;
 scalar_t__ VXLAN_SOCKADDR_IS_IPV4 (union vxlan_sockaddr*) ;
 int in6addr_any ;
 struct vxlan_socket* vxlan_socket_alloc (union vxlan_sockaddr*) ;
 int vxlan_socket_bind (struct vxlan_socket*,struct ifnet*) ;
 int vxlan_socket_destroy (struct vxlan_socket*) ;
 int vxlan_socket_init (struct vxlan_socket*,struct ifnet*) ;
 int vxlan_socket_insert (struct vxlan_socket*) ;

__attribute__((used)) static int
vxlan_socket_create(struct ifnet *ifp, int multicast,
    const union vxlan_sockaddr *saddr, struct vxlan_socket **vsop)
{
 union vxlan_sockaddr laddr;
 struct vxlan_socket *vso;
 int error;

 laddr = *saddr;





 if (multicast != 0) {
  if (VXLAN_SOCKADDR_IS_IPV4(&laddr))
   laddr.in4.sin_addr.s_addr = INADDR_ANY;




 }

 vso = vxlan_socket_alloc(&laddr);
 if (vso == ((void*)0))
  return (ENOMEM);

 error = vxlan_socket_init(vso, ifp);
 if (error)
  goto fail;

 error = vxlan_socket_bind(vso, ifp);
 if (error)
  goto fail;






 vxlan_socket_insert(vso);
 *vsop = vso;

 return (0);

fail:
 vxlan_socket_destroy(vso);

 return (error);
}
