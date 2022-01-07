
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct link {int name; } ;
struct TYPE_3__ {int fsm; } ;
struct TYPE_4__ {TYPE_1__ ipv6cp; } ;
struct bundle {TYPE_2__ ncp; } ;


 int LogIPV6CP ;
 int MB_IPV6CPIN ;
 scalar_t__ PHASE_NETWORK ;
 scalar_t__ bundle_Phase (struct bundle*) ;
 int bundle_PhaseName (struct bundle*) ;
 int fsm_Input (int *,struct mbuf*) ;
 int log_Printf (int ,char*,int ,int ) ;
 int m_freem (struct mbuf*) ;
 int m_settype (struct mbuf*,int ) ;

struct mbuf *
ipv6cp_Input(struct bundle *bundle, struct link *l, struct mbuf *bp)
{

  m_settype(bp, MB_IPV6CPIN);
  if (bundle_Phase(bundle) == PHASE_NETWORK)
    fsm_Input(&bundle->ncp.ipv6cp.fsm, bp);
  else {
    if (bundle_Phase(bundle) < PHASE_NETWORK)
      log_Printf(LogIPV6CP, "%s: Error: Unexpected IPV6CP in phase %s"
                 " (ignored)\n", l->name, bundle_PhaseName(bundle));
    m_freem(bp);
  }
  return ((void*)0);
}
