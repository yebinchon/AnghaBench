
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_addr {scalar_t__ s_addr; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct host_list {TYPE_1__ addr; struct host_list* next; } ;


 struct host_list* hosts ;

__attribute__((used)) static int
search_host(struct in_addr addr)
{
 struct host_list *hp;

 if (hosts == ((void*)0))
  return (0);

 for (hp = hosts; hp != ((void*)0); hp = hp->next) {
  if (hp->addr.s_addr == addr.s_addr)
   return (1);
 }
 return (0);
}
