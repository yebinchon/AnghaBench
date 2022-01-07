
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;
union vxlan_sockaddr {struct sockaddr sa; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ AF_UNSPEC ;

__attribute__((used)) static int
vxlan_sockaddr_supported(const union vxlan_sockaddr *vxladdr, int unspec)
{
 const struct sockaddr *sa;
 int supported;

 sa = &vxladdr->sa;
 supported = 0;

 if (sa->sa_family == AF_UNSPEC && unspec != 0) {
  supported = 1;
 } else if (sa->sa_family == AF_INET) {



 } else if (sa->sa_family == AF_INET6) {



 }

 return (supported);
}
