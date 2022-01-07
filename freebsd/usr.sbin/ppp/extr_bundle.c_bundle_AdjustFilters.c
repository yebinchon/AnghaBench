
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ncpaddr {int dummy; } ;
struct TYPE_2__ {int alive; int dial; int out; int in; } ;
struct bundle {TYPE_1__ filter; } ;


 int filter_AdjustAddr (int *,struct ncpaddr*,struct ncpaddr*,int *) ;

void
bundle_AdjustFilters(struct bundle *bundle, struct ncpaddr *local,
                     struct ncpaddr *remote)
{
  filter_AdjustAddr(&bundle->filter.in, local, remote, ((void*)0));
  filter_AdjustAddr(&bundle->filter.out, local, remote, ((void*)0));
  filter_AdjustAddr(&bundle->filter.dial, local, remote, ((void*)0));
  filter_AdjustAddr(&bundle->filter.alive, local, remote, ((void*)0));
}
