
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct in_addr {int s_addr; } ;
struct TYPE_2__ {int s_addr; } ;
struct host_list {struct host_list* next; TYPE_1__ addr; } ;


 int errx (int,char*) ;
 struct host_list* hosts ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static void
remember_host(struct in_addr addr)
{
 struct host_list *hp;

 if ((hp = (struct host_list *)malloc(sizeof(struct host_list))) == ((void*)0))
  errx(1, "no memory");
 hp->addr.s_addr = addr.s_addr;
 hp->next = hosts;
 hosts = hp;
}
