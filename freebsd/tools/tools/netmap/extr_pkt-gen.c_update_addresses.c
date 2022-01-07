
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct targ {TYPE_1__* g; } ;
struct pkt {int dummy; } ;
struct TYPE_2__ {scalar_t__ af; } ;


 scalar_t__ AF_INET ;
 int update_ip (struct pkt*,struct targ*) ;
 int update_ip6 (struct pkt*,struct targ*) ;

__attribute__((used)) static void
update_addresses(struct pkt *pkt, struct targ *t)
{

 if (t->g->af == AF_INET)
  update_ip(pkt, t);
 else
  update_ip6(pkt, t);
}
