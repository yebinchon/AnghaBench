
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sock {scalar_t__ family; struct addr* faddr; struct addr* laddr; } ;
struct addr {int address; struct addr* next; } ;
struct TYPE_4__ {int sin_port; } ;
struct TYPE_3__ {int sin6_port; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ CHK_PORT (int) ;
 int ntohs (int ) ;
 int * ports ;
 TYPE_2__* sstosin (int *) ;
 TYPE_1__* sstosin6 (int *) ;

__attribute__((used)) static int
check_ports(struct sock *s)
{
 int port;
 struct addr *addr;

 if (ports == ((void*)0))
  return (1);
 if ((s->family != AF_INET) && (s->family != AF_INET6))
  return (1);
 for (addr = s->laddr; addr != ((void*)0); addr = addr->next) {
  if (s->family == AF_INET)
   port = ntohs(sstosin(&addr->address)->sin_port);
  else
   port = ntohs(sstosin6(&addr->address)->sin6_port);
  if (CHK_PORT(port))
   return (1);
 }
 for (addr = s->faddr; addr != ((void*)0); addr = addr->next) {
  if (s->family == AF_INET)
   port = ntohs(sstosin(&addr->address)->sin_port);
  else
   port = ntohs(sstosin6(&addr->address)->sin6_port);
  if (CHK_PORT(port))
   return (1);
 }
 return (0);
}
