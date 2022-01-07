
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct in_addr {int dummy; } ;
struct TYPE_8__ {int alive; int dial; int out; int in; } ;
struct TYPE_5__ {struct in_addr* dns; } ;
struct TYPE_6__ {TYPE_1__ ns; } ;
struct TYPE_7__ {TYPE_2__ ipcp; } ;
struct bundle {TYPE_4__ filter; TYPE_3__ ncp; } ;


 int filter_AdjustAddr (int *,int *,int *,struct in_addr*) ;

void
bundle_AdjustDNS(struct bundle *bundle)
{
  struct in_addr *dns = bundle->ncp.ipcp.ns.dns;

  filter_AdjustAddr(&bundle->filter.in, ((void*)0), ((void*)0), dns);
  filter_AdjustAddr(&bundle->filter.out, ((void*)0), ((void*)0), dns);
  filter_AdjustAddr(&bundle->filter.dial, ((void*)0), ((void*)0), dns);
  filter_AdjustAddr(&bundle->filter.alive, ((void*)0), ((void*)0), dns);
}
