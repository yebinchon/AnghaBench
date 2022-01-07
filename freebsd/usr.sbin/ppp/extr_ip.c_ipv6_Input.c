
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int dummy; } ;
struct link {int dummy; } ;
struct TYPE_4__ {scalar_t__ state; } ;
struct TYPE_6__ {TYPE_1__ fsm; } ;
struct TYPE_5__ {TYPE_3__ ipv6cp; } ;
struct bundle {TYPE_2__ ncp; } ;


 int AF_INET6 ;
 int LogWARN ;
 int MB_IPV6IN ;
 scalar_t__ ST_OPENED ;
 int ip_Input (struct bundle*,struct link*,struct mbuf*,int ) ;
 int ipv6cp_AddInOctets (TYPE_3__*,int) ;
 int log_Printf (int ,char*) ;
 int m_freem (struct mbuf*) ;
 int m_settype (struct mbuf*,int ) ;

struct mbuf *
ipv6_Input(struct bundle *bundle, struct link *l, struct mbuf *bp)
{
  int nb;

  if (bundle->ncp.ipv6cp.fsm.state != ST_OPENED) {
    log_Printf(LogWARN, "ipv6_Input: IPV6CP not open - packet dropped\n");
    m_freem(bp);
    return ((void*)0);
  }

  m_settype(bp, MB_IPV6IN);

  nb = ip_Input(bundle, l, bp, AF_INET6);
  ipv6cp_AddInOctets(&bundle->ncp.ipv6cp, nb);

  return ((void*)0);
}
