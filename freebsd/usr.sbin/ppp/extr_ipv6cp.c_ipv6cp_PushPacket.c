
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef unsigned int u_int32_t ;
struct mqueue {scalar_t__ top; } ;
struct mbuf {int dummy; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_8__ {TYPE_2__ fsm; } ;
struct link {int name; TYPE_4__ ccp; } ;
struct TYPE_5__ {scalar_t__ state; struct bundle* bundle; } ;
struct ipv6cp {struct mqueue* Queue; TYPE_1__ fsm; } ;
struct TYPE_7__ {int alive; } ;
struct bundle {TYPE_3__ filter; } ;


 int AF_INET6 ;
 int FilterCheck (int ,int ,int *,unsigned int*) ;
 int IPV6CP_QUEUES (struct ipv6cp*) ;
 int LogPHASE ;
 int MBUF_CTOP (struct mbuf*) ;
 int PROTO_IPV6 ;
 scalar_t__ ST_OPENED ;
 int bundle_StartIdleTimer (struct bundle*,unsigned int) ;
 scalar_t__ ccp_Required (TYPE_4__*) ;
 int ipv6cp_AddOutOctets (struct ipv6cp*,int) ;
 int link_PushPacket (struct link*,struct mbuf*,struct bundle*,int ,int ) ;
 int log_Printf (int ,char*,int ) ;
 struct mbuf* m_dequeue (struct mqueue*) ;
 int m_length (struct mbuf*) ;
 struct mbuf* m_pullup (struct mbuf*) ;
 struct mbuf* mbuf_Read (struct mbuf*,unsigned int*,int) ;

int
ipv6cp_PushPacket(struct ipv6cp *ipv6cp, struct link *l)
{
  struct bundle *bundle = ipv6cp->fsm.bundle;
  struct mqueue *queue;
  struct mbuf *bp;
  int m_len;
  u_int32_t secs = 0;
  unsigned alivesecs = 0;

  if (ipv6cp->fsm.state != ST_OPENED)
    return 0;




  if (l->ccp.fsm.state != ST_OPENED && ccp_Required(&l->ccp)) {
    log_Printf(LogPHASE, "%s: Not transmitting... waiting for CCP\n", l->name);
    return 0;
  }

  queue = ipv6cp->Queue + IPV6CP_QUEUES(ipv6cp) - 1;
  do {
    if (queue->top) {
      bp = m_dequeue(queue);
      bp = mbuf_Read(bp, &secs, sizeof secs);
      bp = m_pullup(bp);
      m_len = m_length(bp);
      if (!FilterCheck(MBUF_CTOP(bp), AF_INET6, &bundle->filter.alive,
                       &alivesecs)) {
        if (secs == 0)
          secs = alivesecs;
        bundle_StartIdleTimer(bundle, secs);
      }
      link_PushPacket(l, bp, bundle, 0, PROTO_IPV6);
      ipv6cp_AddOutOctets(ipv6cp, m_len);
      return 1;
    }
  } while (queue-- != ipv6cp->Queue);

  return 0;
}
