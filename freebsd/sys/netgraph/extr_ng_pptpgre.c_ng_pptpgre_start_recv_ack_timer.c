
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* hpriv_p ;
struct TYPE_4__ {int* timeSent; int ato; int hook; int node; int rackTimer; } ;


 int PPTP_TIME_SCALE ;
 int howmany (int,int ) ;
 int hz ;
 int ng_callout (int *,int ,int ,int,int ,TYPE_1__*,int ) ;
 int ng_pptpgre_recv_ack_timeout ;
 int ng_pptpgre_time () ;

__attribute__((used)) static void
ng_pptpgre_start_recv_ack_timer(hpriv_p hpriv)
{
 int remain, ticks;



 remain = (hpriv->timeSent[0] + hpriv->ato) - ng_pptpgre_time();
 if (remain < 0)
  remain = 0;


 ticks = howmany(remain * hz, PPTP_TIME_SCALE) + 1;
 ng_callout(&hpriv->rackTimer, hpriv->node, hpriv->hook,
     ticks, ng_pptpgre_recv_ack_timeout, hpriv, 0);
}
