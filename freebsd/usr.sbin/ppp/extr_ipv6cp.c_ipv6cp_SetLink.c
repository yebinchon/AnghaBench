
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct link {int dummy; } ;
struct TYPE_2__ {struct link* link; } ;
struct ipv6cp {TYPE_1__ fsm; } ;



void
ipv6cp_SetLink(struct ipv6cp *ipv6cp, struct link *l)
{
  ipv6cp->fsm.link = l;
}
