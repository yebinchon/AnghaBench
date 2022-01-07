
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
struct ipcp {struct mqueue* Queue; TYPE_1__ fsm; } ;
struct TYPE_7__ {int alive; } ;
struct bundle {TYPE_3__ filter; } ;


 int AF_INET ;
 int FilterCheck (int ,int ,int *,unsigned int*) ;
 int IPCP_QUEUES (struct ipcp*) ;
 int LogPHASE ;
 int MBUF_CTOP (struct mbuf*) ;
 int PROTO_IP ;
 scalar_t__ ST_OPENED ;
 int bundle_StartIdleTimer (struct bundle*,unsigned int) ;
 scalar_t__ ccp_Required (TYPE_4__*) ;
 int ipcp_AddOutOctets (struct ipcp*,int) ;
 int link_PushPacket (struct link*,struct mbuf*,struct bundle*,int ,int ) ;
 int log_Printf (int ,char*,int ) ;
 struct mbuf* m_dequeue (struct mqueue*) ;
 int m_length (struct mbuf*) ;
 struct mbuf* m_pullup (struct mbuf*) ;
 struct mbuf* mbuf_Read (struct mbuf*,unsigned int*,int) ;

int
ipcp_PushPacket(struct ipcp *ipcp, struct link *l)
{
  struct bundle *bundle = ipcp->fsm.bundle;
  struct mqueue *queue;
  struct mbuf *bp;
  int m_len;
  u_int32_t secs = 0;
  unsigned alivesecs = 0;

  if (ipcp->fsm.state != ST_OPENED)
    return 0;




  if (l->ccp.fsm.state != ST_OPENED && ccp_Required(&l->ccp)) {
    log_Printf(LogPHASE, "%s: Not transmitting... waiting for CCP\n", l->name);
    return 0;
  }

  queue = ipcp->Queue + IPCP_QUEUES(ipcp) - 1;
  do {
    if (queue->top) {
      bp = m_dequeue(queue);
      bp = mbuf_Read(bp, &secs, sizeof secs);
      bp = m_pullup(bp);
      m_len = m_length(bp);
      if (!FilterCheck(MBUF_CTOP(bp), AF_INET, &bundle->filter.alive,
                       &alivesecs)) {
        if (secs == 0)
          secs = alivesecs;
        bundle_StartIdleTimer(bundle, secs);
      }
      link_PushPacket(l, bp, bundle, 0, PROTO_IP);
      ipcp_AddOutOctets(ipcp, m_len);
      return 1;
    }
  } while (queue-- != ipcp->Queue);

  return 0;
}
