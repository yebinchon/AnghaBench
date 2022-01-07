
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_short ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct link {int nlayers; TYPE_1__** layer; } ;
struct bundle {int dummy; } ;
struct TYPE_2__ {struct mbuf* (* pull ) (struct bundle*,struct link*,struct mbuf*,scalar_t__*) ;} ;


 int Despatch (struct bundle*,struct link*,struct mbuf*,scalar_t__) ;
 int LAYER_MAX ;
 int LogDEBUG ;
 int MBUF_CTOP (struct mbuf*) ;
 int MB_UNKNOWN ;
 int link_AddInOctets (struct link*,size_t) ;
 int log_Printf (int ,char*,scalar_t__) ;
 struct mbuf* m_get (size_t,int ) ;
 int memcpy (int ,char*,size_t) ;
 int memset (struct mbuf**,char,int) ;
 struct mbuf* stub1 (struct bundle*,struct link*,struct mbuf*,scalar_t__*) ;

void
link_PullPacket(struct link *l, char *buf, size_t len, struct bundle *b)
{
  struct mbuf *bp, *lbp[LAYER_MAX], *next;
  u_short lproto[LAYER_MAX], proto;
  int layer;
  link_AddInOctets(l, len);

  memset(lbp, '\0', sizeof lbp);
  lbp[0] = m_get(len, MB_UNKNOWN);
  memcpy(MBUF_CTOP(lbp[0]), buf, len);
  lproto[0] = 0;
  layer = 0;

  while (layer || lbp[layer]) {
    if (lbp[layer] == ((void*)0)) {
      layer--;
      continue;
    }
    bp = lbp[layer];
    lbp[layer] = bp->m_nextpkt;
    bp->m_nextpkt = ((void*)0);
    proto = lproto[layer];

    if (l->layer[layer]->pull != ((void*)0))
      bp = (*l->layer[layer]->pull)(b, l, bp, &proto);

    if (layer == l->nlayers - 1) {

      while (bp) {
        next = bp->m_nextpkt;
        bp->m_nextpkt = ((void*)0);
        log_Printf(LogDEBUG, "link_PullPacket: Despatch proto 0x%04x\n", proto);
        Despatch(b, l, bp, proto);
        bp = next;
      }
    } else {
      lbp[++layer] = bp;
      lproto[layer] = proto;
    }
  }
}
