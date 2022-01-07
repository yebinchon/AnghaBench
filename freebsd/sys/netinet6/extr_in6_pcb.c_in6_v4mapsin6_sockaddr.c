
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int dummy; } ;
struct in_addr {int dummy; } ;
struct sockaddr_in {int sin_len; struct in_addr sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;
typedef int in_port_t ;


 int AF_INET ;
 int M_SONAME ;
 int M_WAITOK ;
 int bzero (struct sockaddr_in*,int) ;
 int in6_sin_2_v4mapsin6 (struct sockaddr_in*,struct sockaddr_in6*) ;
 struct sockaddr_in6* malloc (int,int ,int ) ;

struct sockaddr *
in6_v4mapsin6_sockaddr(in_port_t port, struct in_addr *addr_p)
{
 struct sockaddr_in sin;
 struct sockaddr_in6 *sin6_p;

 bzero(&sin, sizeof sin);
 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(sin);
 sin.sin_port = port;
 sin.sin_addr = *addr_p;

 sin6_p = malloc(sizeof *sin6_p, M_SONAME,
  M_WAITOK);
 in6_sin_2_v4mapsin6(&sin, sin6_p);

 return (struct sockaddr *)sin6_p;
}
