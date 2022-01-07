
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef TYPE_2__* ng_btsocket_l2cap_rtentry_p ;
typedef TYPE_2__* ng_btsocket_l2cap_pcb_p ;
struct TYPE_14__ {int so_error; } ;
struct TYPE_13__ {int flags; int * hook; int pcb_mtx; TYPE_1__* rt; scalar_t__ cid; scalar_t__ token; TYPE_4__* so; int state; } ;
struct TYPE_12__ {int * hook; } ;


 int ENETDOWN ;
 TYPE_2__* LIST_FIRST (int *) ;
 TYPE_2__* LIST_NEXT (TYPE_2__*,int ) ;
 int LIST_REMOVE (TYPE_2__*,int ) ;
 int M_NETGRAPH_BTSOCKET_L2CAP ;
 int NG_BTSOCKET_L2CAP_CLOSED ;
 int NG_BTSOCKET_L2CAP_TIMO ;
 scalar_t__ NG_HOOK_NOT_VALID (int *) ;
 int NG_HOOK_SET_PRIVATE (int *,int *) ;
 int NG_HOOK_UNREF (int *) ;
 int bzero (TYPE_2__*,int) ;
 int free (TYPE_2__*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int ng_btsocket_l2cap_rt ;
 int ng_btsocket_l2cap_rt_mtx ;
 int ng_btsocket_l2cap_sockets ;
 int ng_btsocket_l2cap_sockets_mtx ;
 int ng_btsocket_l2cap_untimeout (TYPE_2__*) ;
 int soisdisconnected (TYPE_4__*) ;

__attribute__((used)) static void
ng_btsocket_l2cap_rtclean(void *context, int pending)
{
 ng_btsocket_l2cap_pcb_p pcb = ((void*)0), pcb_next = ((void*)0);
 ng_btsocket_l2cap_rtentry_p rt = ((void*)0);

 mtx_lock(&ng_btsocket_l2cap_rt_mtx);
 mtx_lock(&ng_btsocket_l2cap_sockets_mtx);





 for (pcb = LIST_FIRST(&ng_btsocket_l2cap_sockets); pcb != ((void*)0); ) {
  mtx_lock(&pcb->pcb_mtx);
  pcb_next = LIST_NEXT(pcb, next);

  if (pcb->rt != ((void*)0) &&
      pcb->rt->hook != ((void*)0) && NG_HOOK_NOT_VALID(pcb->rt->hook)) {
   if (pcb->flags & NG_BTSOCKET_L2CAP_TIMO)
    ng_btsocket_l2cap_untimeout(pcb);

   pcb->so->so_error = ENETDOWN;
   pcb->state = NG_BTSOCKET_L2CAP_CLOSED;
   soisdisconnected(pcb->so);

   pcb->token = 0;
   pcb->cid = 0;
   pcb->rt = ((void*)0);
  }

  mtx_unlock(&pcb->pcb_mtx);
  pcb = pcb_next;
 }





 for (rt = LIST_FIRST(&ng_btsocket_l2cap_rt); rt != ((void*)0); ) {
  ng_btsocket_l2cap_rtentry_p rt_next = LIST_NEXT(rt, next);

  if (rt->hook != ((void*)0) && NG_HOOK_NOT_VALID(rt->hook)) {
   LIST_REMOVE(rt, next);

   NG_HOOK_SET_PRIVATE(rt->hook, ((void*)0));
   NG_HOOK_UNREF(rt->hook);

   bzero(rt, sizeof(*rt));
   free(rt, M_NETGRAPH_BTSOCKET_L2CAP);
  }

  rt = rt_next;
 }

 mtx_unlock(&ng_btsocket_l2cap_sockets_mtx);
 mtx_unlock(&ng_btsocket_l2cap_rt_mtx);
}
