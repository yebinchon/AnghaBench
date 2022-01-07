
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* hpriv_p ;
struct TYPE_6__ {int enableDelayedAck; } ;
struct TYPE_7__ {int mtx; TYPE_1__ conf; int sackTimer; } ;


 int MA_OWNED ;
 int callout_pending (int *) ;
 int mtx_assert (int *,int ) ;
 int mtx_unlock (int *) ;
 int ng_pptpgre_start_send_ack_timer (TYPE_2__* const) ;
 int ng_pptpgre_xmit (TYPE_2__* const,int *) ;

__attribute__((used)) static void
ng_pptpgre_ack(const hpriv_p hpriv)
{
 mtx_assert(&hpriv->mtx, MA_OWNED);
 if (!(callout_pending(&hpriv->sackTimer))) {

  if (!hpriv->conf.enableDelayedAck) {
   ng_pptpgre_xmit(hpriv, ((void*)0));

   return;
  }

  ng_pptpgre_start_send_ack_timer(hpriv);
  mtx_unlock(&hpriv->mtx);
  return;
 }
 mtx_unlock(&hpriv->mtx);
}
