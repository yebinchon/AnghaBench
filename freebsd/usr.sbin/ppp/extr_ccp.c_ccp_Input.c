
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct TYPE_6__ {TYPE_1__* link; } ;
struct TYPE_5__ {TYPE_3__ fsm; } ;
struct link {TYPE_2__ ccp; } ;
struct bundle {int dummy; } ;
struct TYPE_4__ {int name; } ;


 int LogCCP ;
 int MB_CCPIN ;
 scalar_t__ PHASE_NETWORK ;
 scalar_t__ bundle_Phase (struct bundle*) ;
 int bundle_PhaseName (struct bundle*) ;
 int fsm_Input (TYPE_3__*,struct mbuf*) ;
 int log_Printf (int ,char*,int ,int ) ;
 int m_freem (struct mbuf*) ;
 int m_settype (struct mbuf*,int ) ;

extern struct mbuf *
ccp_Input(struct bundle *bundle, struct link *l, struct mbuf *bp)
{

  m_settype(bp, MB_CCPIN);
  if (bundle_Phase(bundle) == PHASE_NETWORK)
    fsm_Input(&l->ccp.fsm, bp);
  else {
    if (bundle_Phase(bundle) < PHASE_NETWORK)
      log_Printf(LogCCP, "%s: Error: Unexpected CCP in phase %s (ignored)\n",
                 l->ccp.fsm.link->name, bundle_PhaseName(bundle));
    m_freem(bp);
  }
  return ((void*)0);
}
