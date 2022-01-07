
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_addr {int dummy; } ;
struct sockaddr_in {int sin_len; int sin_port; struct in_addr sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int in_port_t ;


 int AF_INET ;
 int M_SONAME ;
 int M_WAITOK ;
 int M_ZERO ;
 struct sockaddr_in* malloc (int,int ,int) ;

__attribute__((used)) static struct sockaddr *
sdp_sockaddr(in_port_t port, struct in_addr *addr_p)
{
 struct sockaddr_in *sin;

 sin = malloc(sizeof *sin, M_SONAME,
  M_WAITOK | M_ZERO);
 sin->sin_family = AF_INET;
 sin->sin_len = sizeof(*sin);
 sin->sin_addr = *addr_p;
 sin->sin_port = port;

 return (struct sockaddr *)sin;
}
