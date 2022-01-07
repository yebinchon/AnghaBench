
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* hpriv_p ;
struct TYPE_4__ {int rtt; int hook; int node; int sackTimer; } ;


 int PPTP_MAX_ACK_DELAY ;
 int PPTP_MIN_ACK_DELAY ;
 int PPTP_TIME_SCALE ;
 int howmany (int,int ) ;
 int hz ;
 int ng_callout (int *,int ,int ,int,int ,TYPE_1__*,int ) ;
 int ng_pptpgre_send_ack_timeout ;

__attribute__((used)) static void
ng_pptpgre_start_send_ack_timer(hpriv_p hpriv)
{
 int ackTimeout, ticks;


 ackTimeout = (hpriv->rtt >> 2);
 if (ackTimeout < PPTP_MIN_ACK_DELAY)
  ackTimeout = PPTP_MIN_ACK_DELAY;
 else if (ackTimeout > PPTP_MAX_ACK_DELAY)
  ackTimeout = PPTP_MAX_ACK_DELAY;


 ticks = howmany(ackTimeout * hz, PPTP_TIME_SCALE);
 ng_callout(&hpriv->sackTimer, hpriv->node, hpriv->hook,
     ticks, ng_pptpgre_send_ack_timeout, hpriv, 0);
}
