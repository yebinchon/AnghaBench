
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* priv_p ;
typedef int node_p ;
typedef TYPE_3__* hpriv_p ;
typedef int hook_p ;
struct TYPE_7__ {scalar_t__ rtt; scalar_t__ ato; int xmitWin; scalar_t__ recvAck; scalar_t__ winAck; scalar_t__ xmitSeq; int dev; } ;
struct TYPE_5__ {int recvAckTimeouts; } ;
struct TYPE_6__ {TYPE_1__ stats; } ;


 TYPE_2__* NG_NODE_PRIVATE (int ) ;
 scalar_t__ PPTP_ACK_CHI (int ) ;
 scalar_t__ PPTP_ACK_DELTA (scalar_t__) ;
 scalar_t__ PPTP_MAX_TIMEOUT ;
 scalar_t__ PPTP_MIN_TIMEOUT ;

__attribute__((used)) static void
ng_pptpgre_recv_ack_timeout(node_p node, hook_p hook, void *arg1, int arg2)
{
 const priv_p priv = NG_NODE_PRIVATE(node);
 const hpriv_p hpriv = arg1;


 priv->stats.recvAckTimeouts++;
 hpriv->rtt = PPTP_ACK_DELTA(hpriv->rtt) + 1;
 hpriv->ato = hpriv->rtt + PPTP_ACK_CHI(hpriv->dev);
 if (hpriv->ato > PPTP_MAX_TIMEOUT)
  hpriv->ato = PPTP_MAX_TIMEOUT;
 else if (hpriv->ato < PPTP_MIN_TIMEOUT)
  hpriv->ato = PPTP_MIN_TIMEOUT;


 hpriv->recvAck = hpriv->xmitSeq;
 hpriv->xmitWin = (hpriv->xmitWin + 1) / 2;
 hpriv->winAck = hpriv->recvAck + hpriv->xmitWin;
}
