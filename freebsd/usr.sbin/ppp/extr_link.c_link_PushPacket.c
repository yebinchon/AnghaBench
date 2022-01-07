
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct mbuf {scalar_t__ priv; } ;
struct link {int nlayers; scalar_t__ Queue; TYPE_1__** layer; } ;
struct bundle {int dummy; } ;
struct TYPE_2__ {struct mbuf* (* push ) (struct bundle*,struct link*,struct mbuf*,int,int *) ;} ;


 unsigned int LINK_QUEUES (struct link*) ;
 int LogDEBUG ;
 int link_AddOutOctets (struct link*,int ) ;
 int log_Printf (int ,char*,int ) ;
 int m_enqueue (scalar_t__,int ) ;
 int m_length (struct mbuf*) ;
 int m_pullup (struct mbuf*) ;
 struct mbuf* stub1 (struct bundle*,struct link*,struct mbuf*,int,int *) ;

void
link_PushPacket(struct link *l, struct mbuf *bp, struct bundle *b, int pri,
                u_short proto)
{
  int layer;
  if(pri < 0 || (unsigned)pri >= LINK_QUEUES(l))
    pri = 0;

  bp->priv = 0;
  for (layer = l->nlayers; layer && bp; layer--)
    if (l->layer[layer - 1]->push != ((void*)0))
      bp = (*l->layer[layer - 1]->push)(b, l, bp, pri, &proto);

  if (bp) {
    link_AddOutOctets(l, m_length(bp));
    log_Printf(LogDEBUG, "link_PushPacket: Transmit proto 0x%04x\n", proto);
    m_enqueue(l->Queue + pri, m_pullup(bp));
  }
}
