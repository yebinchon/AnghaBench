#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u_short ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct link {int nlayers; TYPE_1__** layer; } ;
struct bundle {int dummy; } ;
struct TYPE_2__ {struct mbuf* (* pull ) (struct bundle*,struct link*,struct mbuf*,scalar_t__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bundle*,struct link*,struct mbuf*,scalar_t__) ; 
 int LAYER_MAX ; 
 int /*<<< orphan*/  LogDEBUG ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  MB_UNKNOWN ; 
 int /*<<< orphan*/  FUNC2 (struct link*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 struct mbuf* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf**,char,int) ; 
 struct mbuf* FUNC7 (struct bundle*,struct link*,struct mbuf*,scalar_t__*) ; 

void
FUNC8(struct link *l, char *buf, size_t len, struct bundle *b)
{
  struct mbuf *bp, *lbp[LAYER_MAX], *next;
  u_short lproto[LAYER_MAX], proto;
  int layer;

  /*
   * When we ``pull'' a packet from the link, it gets processed by the
   * ``pull'' function in each layer starting at the bottom.
   * Each ``pull'' may produce multiple packets, chained together using
   * bp->m_nextpkt.
   * Each packet that results from each pull has to be pulled through
   * all of the higher layers before the next resulting packet is pulled
   * through anything; this ensures that packets that depend on the
   * fsm state resulting from the receipt of the previous packet aren't
   * surprised.
   */

  FUNC2(l, len);

  FUNC6(lbp, '\0', sizeof lbp);
  lbp[0] = FUNC4(len, MB_UNKNOWN);
  FUNC5(FUNC1(lbp[0]), buf, len);
  lproto[0] = 0;
  layer = 0;

  while (layer || lbp[layer]) {
    if (lbp[layer] == NULL) {
      layer--;
      continue;
    }
    bp = lbp[layer];
    lbp[layer] = bp->m_nextpkt;
    bp->m_nextpkt = NULL;
    proto = lproto[layer];

    if (l->layer[layer]->pull != NULL)
      bp = (*l->layer[layer]->pull)(b, l, bp, &proto);

    if (layer == l->nlayers - 1) {
      /* We've just done the top layer, despatch the packet(s) */
      while (bp) {
        next = bp->m_nextpkt;
        bp->m_nextpkt = NULL;
        FUNC3(LogDEBUG, "link_PullPacket: Despatch proto 0x%04x\n", proto);
        FUNC0(b, l, bp, proto);
        bp = next;
      }
    } else {
      lbp[++layer] = bp;
      lproto[layer] = proto;
    }
  }
}