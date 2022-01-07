
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union vxlan_sockaddr {int in6; } ;


 int EAFNOSUPPORT ;
 int MPASS (int ) ;
 int VXLAN_SOCKADDR_IS_IPV6 (union vxlan_sockaddr*) ;
 int V_ip6_use_defzone ;
 int sa6_embedscope (int *,int ) ;

__attribute__((used)) static int
vxlan_sockaddr_in6_embedscope(union vxlan_sockaddr *vxladdr)
{
 int error;

 MPASS(VXLAN_SOCKADDR_IS_IPV6(vxladdr));



 error = EAFNOSUPPORT;


 return (error);
}
