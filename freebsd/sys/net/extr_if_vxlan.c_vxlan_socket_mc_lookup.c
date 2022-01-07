
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int sin6_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct TYPE_5__ {TYPE_1__ sin_addr; } ;
union vxlan_sockaddr {TYPE_3__ in6; TYPE_2__ in4; } ;
struct vxlan_socket {int dummy; } ;


 int INADDR_ANY ;
 scalar_t__ VXLAN_SOCKADDR_IS_IPV4 (union vxlan_sockaddr*) ;
 int in6addr_any ;
 struct vxlan_socket* vxlan_socket_lookup (union vxlan_sockaddr*) ;

__attribute__((used)) static struct vxlan_socket *
vxlan_socket_mc_lookup(const union vxlan_sockaddr *vxlsa)
{
 union vxlan_sockaddr laddr;
 struct vxlan_socket *vso;

 laddr = *vxlsa;

 if (VXLAN_SOCKADDR_IS_IPV4(&laddr))
  laddr.in4.sin_addr.s_addr = INADDR_ANY;





 vso = vxlan_socket_lookup(&laddr);

 return (vso);
}
