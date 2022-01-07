
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef TYPE_1__* ng_btsocket_rfcomm_session_p ;
typedef TYPE_2__* ng_btsocket_rfcomm_pcb_p ;
struct TYPE_12__ {int src; } ;
struct TYPE_11__ {scalar_t__ state; int pcb_mtx; int src; int mtu; } ;
struct TYPE_10__ {int l2so; int mtu; int dlcs; int session_mtx; } ;


 TYPE_2__* LIST_FIRST (int *) ;
 TYPE_2__* LIST_NEXT (TYPE_2__*,int ) ;
 int MA_OWNED ;
 scalar_t__ NG_BTSOCKET_RFCOMM_DLC_CONFIGURING ;
 scalar_t__ NG_BTSOCKET_RFCOMM_DLC_W4_CONNECT ;
 int bcopy (int *,int *,int) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int ng_btsocket_rfcomm_pcb_kill (TYPE_2__*,int) ;
 int ng_btsocket_rfcomm_send_pn (TYPE_2__*) ;
 int session_next ;
 TYPE_3__* so2l2cap_pcb (int ) ;

__attribute__((used)) static void
ng_btsocket_rfcomm_connect_cfm(ng_btsocket_rfcomm_session_p s)
{
 ng_btsocket_rfcomm_pcb_p pcb = ((void*)0), pcb_next = ((void*)0);
 int error;

 mtx_assert(&s->session_mtx, MA_OWNED);
 for (pcb = LIST_FIRST(&s->dlcs); pcb != ((void*)0); ) {
  mtx_lock(&pcb->pcb_mtx);
  pcb_next = LIST_NEXT(pcb, session_next);

  if (pcb->state == NG_BTSOCKET_RFCOMM_DLC_W4_CONNECT) {
   pcb->mtu = s->mtu;
   bcopy(&so2l2cap_pcb(s->l2so)->src, &pcb->src,
    sizeof(pcb->src));

   error = ng_btsocket_rfcomm_send_pn(pcb);
   if (error == 0)
    pcb->state = NG_BTSOCKET_RFCOMM_DLC_CONFIGURING;
   else
    ng_btsocket_rfcomm_pcb_kill(pcb, error);
  }

  mtx_unlock(&pcb->pcb_mtx);
  pcb = pcb_next;
 }
}
