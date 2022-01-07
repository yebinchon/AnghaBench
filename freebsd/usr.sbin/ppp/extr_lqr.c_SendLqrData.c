
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mbuf {int m_len; int m_offset; } ;
struct lqrdata {int dummy; } ;
struct TYPE_2__ {int link; int bundle; } ;
struct lcp {TYPE_1__ fsm; } ;


 scalar_t__ LINK_QUEUES (int ) ;
 int MB_LQROUT ;
 int PROTO_LQR ;
 int acf_WrapperOctets (struct lcp*,int ) ;
 int link_PushPacket (int ,struct mbuf*,int ,scalar_t__,int ) ;
 struct mbuf* m_get (int,int ) ;
 int proto_WrapperOctets (struct lcp*,int ) ;

__attribute__((used)) static void
SendLqrData(struct lcp *lcp)
{
  struct mbuf *bp;
  int extra;

  extra = proto_WrapperOctets(lcp, PROTO_LQR) +
          acf_WrapperOctets(lcp, PROTO_LQR);
  bp = m_get(sizeof(struct lqrdata) + extra, MB_LQROUT);
  bp->m_len -= extra;
  bp->m_offset += extra;
  link_PushPacket(lcp->fsm.link, bp, lcp->fsm.bundle,
                  LINK_QUEUES(lcp->fsm.link) - 1, PROTO_LQR);
}
