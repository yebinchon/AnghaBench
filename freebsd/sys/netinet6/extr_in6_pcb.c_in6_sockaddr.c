
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in6_addr {int dummy; } ;
struct sockaddr_in6 {int sin6_len; struct in6_addr sin6_addr; int sin6_port; int sin6_family; } ;
struct sockaddr {int dummy; } ;
typedef int in_port_t ;


 int AF_INET6 ;
 int M_SONAME ;
 int M_WAITOK ;
 int bzero (struct sockaddr_in6*,int) ;
 struct sockaddr_in6* malloc (int,int ,int ) ;
 int sa6_recoverscope (struct sockaddr_in6*) ;

struct sockaddr *
in6_sockaddr(in_port_t port, struct in6_addr *addr_p)
{
 struct sockaddr_in6 *sin6;

 sin6 = malloc(sizeof *sin6, M_SONAME, M_WAITOK);
 bzero(sin6, sizeof *sin6);
 sin6->sin6_family = AF_INET6;
 sin6->sin6_len = sizeof(*sin6);
 sin6->sin6_port = port;
 sin6->sin6_addr = *addr_p;
 (void)sa6_recoverscope(sin6);

 return (struct sockaddr *)sin6;
}
