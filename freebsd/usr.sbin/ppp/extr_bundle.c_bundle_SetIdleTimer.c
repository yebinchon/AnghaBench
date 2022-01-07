
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int timeout; unsigned int min_timeout; } ;
struct TYPE_4__ {TYPE_1__ idle; } ;
struct bundle {int ncp; TYPE_2__ cfg; } ;


 int bundle_StartIdleTimer (struct bundle*,int ) ;
 scalar_t__ ncp_LayersOpen (int *) ;

void
bundle_SetIdleTimer(struct bundle *bundle, unsigned timeout,
      unsigned min_timeout)
{
  bundle->cfg.idle.timeout = timeout;
  bundle->cfg.idle.min_timeout = min_timeout;
  if (ncp_LayersOpen(&bundle->ncp))
    bundle_StartIdleTimer(bundle, 0);
}
