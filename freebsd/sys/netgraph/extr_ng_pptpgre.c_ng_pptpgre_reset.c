
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ng_pptpgre_roq {int item; } ;
typedef TYPE_2__* hpriv_p ;
struct TYPE_4__ {int peerPpd; int recvWin; } ;
struct TYPE_5__ {int rtt; int xmitWin; int winAck; scalar_t__ roq_len; int roq; int node; int reorderTimer; int rackTimer; int sackTimer; int xmitAck; int xmitSeq; int recvAck; int recvSeq; TYPE_1__ conf; scalar_t__ dev; int ato; } ;


 int M_NETGRAPH ;
 int NG_FREE_ITEM (int ) ;
 int PPTP_MAX_TIMEOUT ;
 int PPTP_TIME_SCALE ;
 int PPTP_XMIT_WIN ;
 int SLIST_EMPTY (int *) ;
 struct ng_pptpgre_roq* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 int free (struct ng_pptpgre_roq*,int ) ;
 int next ;
 int ng_uncallout (int *,int ) ;

__attribute__((used)) static void
ng_pptpgre_reset(hpriv_p hpriv)
{
 struct ng_pptpgre_roq *np;


 hpriv->ato = PPTP_MAX_TIMEOUT;
 hpriv->rtt = PPTP_TIME_SCALE / 10;
 if (hpriv->conf.peerPpd > 1)
  hpriv->rtt *= hpriv->conf.peerPpd;
 hpriv->dev = 0;
 hpriv->xmitWin = (hpriv->conf.recvWin + 1) / 2;
 if (hpriv->xmitWin < 2)
  hpriv->xmitWin = 2;
 else if (hpriv->xmitWin > PPTP_XMIT_WIN)
  hpriv->xmitWin = PPTP_XMIT_WIN;
 hpriv->winAck = hpriv->xmitWin;


 hpriv->recvSeq = ~0;
 hpriv->recvAck = ~0;
 hpriv->xmitSeq = ~0;
 hpriv->xmitAck = ~0;


 ng_uncallout(&hpriv->sackTimer, hpriv->node);
 ng_uncallout(&hpriv->rackTimer, hpriv->node);
 ng_uncallout(&hpriv->reorderTimer, hpriv->node);


 while (!SLIST_EMPTY(&hpriv->roq)) {
  np = SLIST_FIRST(&hpriv->roq);
  SLIST_REMOVE_HEAD(&hpriv->roq, next);
  NG_FREE_ITEM(np->item);
  free(np, M_NETGRAPH);
 }
 hpriv->roq_len = 0;
}
