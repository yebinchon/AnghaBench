
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sin6_len; } ;
struct TYPE_4__ {int sin_len; } ;
union vxlan_sockaddr {TYPE_1__ in6; TYPE_2__ in4; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int MPASS (int) ;
 int bzero (union vxlan_sockaddr*,int) ;
 TYPE_2__* satoconstsin (struct sockaddr const*) ;
 TYPE_1__* satoconstsin6 (struct sockaddr const*) ;

__attribute__((used)) static void
vxlan_sockaddr_copy(union vxlan_sockaddr *vxladdr,
    const struct sockaddr *sa)
{

 MPASS(sa->sa_family == AF_INET || sa->sa_family == AF_INET6);
 bzero(vxladdr, sizeof(*vxladdr));

 if (sa->sa_family == AF_INET) {
  vxladdr->in4 = *satoconstsin(sa);
  vxladdr->in4.sin_len = sizeof(struct sockaddr_in);
 } else if (sa->sa_family == AF_INET6) {
  vxladdr->in6 = *satoconstsin6(sa);
  vxladdr->in6.sin6_len = sizeof(struct sockaddr_in6);
 }
}
