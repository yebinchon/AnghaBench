
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct link {int name; } ;
struct TYPE_3__ {int fsm; } ;
struct TYPE_4__ {TYPE_1__ ipcp; } ;
struct bundle {TYPE_2__ ncp; } ;


 int LogIPCP ;
 int MB_IPCPIN ;
 scalar_t__ PHASE_NETWORK ;
 scalar_t__ bundle_Phase (struct bundle*) ;
 int bundle_PhaseName (struct bundle*) ;
 int fsm_Input (int *,struct mbuf*) ;
 int log_Printf (int ,char*,int ,int ) ;
 int m_freem (struct mbuf*) ;
 int m_settype (struct mbuf*,int ) ;

extern struct mbuf *
ipcp_Input(struct bundle *bundle, struct link *l, struct mbuf *bp)
{

  m_settype(bp, MB_IPCPIN);
  if (bundle_Phase(bundle) == PHASE_NETWORK)
    fsm_Input(&bundle->ncp.ipcp.fsm, bp);
  else {
    if (bundle_Phase(bundle) < PHASE_NETWORK)
      log_Printf(LogIPCP, "%s: Error: Unexpected IPCP in phase %s (ignored)\n",
                 l->name, bundle_PhaseName(bundle));
    m_freem(bp);
  }
  return ((void*)0);
}
