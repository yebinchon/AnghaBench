
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef TYPE_2__* tcb_p ;
typedef TYPE_3__* lcb_p ;
typedef TYPE_4__* hcb_p ;
typedef TYPE_5__* ccb_p ;
struct TYPE_17__ {size_t target; int tag; int link_ccbq; int host_status; int * cam_ccb; scalar_t__ dmamapped; int dmamap; int lun; } ;
struct TYPE_16__ {int free_ccbq; int data_dmat; TYPE_5__* last_cp; int bad_itl_ba; int bad_itlq_ba; TYPE_2__* target; } ;
struct TYPE_13__ {void* resel_sa; void* itl_task_sa; } ;
struct TYPE_15__ {int* cb_tags; size_t if_tag; scalar_t__ busy_itlq; scalar_t__ busy_itl; TYPE_1__ head; void** itlq_tbl; } ;
struct TYPE_14__ {TYPE_5__* nego_cp; int busy0_map; } ;


 int DEBUG_FLAGS ;
 int DEBUG_TAGS ;
 int HS_IDLE ;
 int NO_TAG ;
 int PRINT_LUN (TYPE_4__*,size_t,int ) ;
 int SCRIPTB_BA (TYPE_4__*,int ) ;
 size_t SYM_CONF_MAX_TASK ;
 int bus_dmamap_unload (int ,int ) ;
 void* cpu_to_scr (int ) ;
 int printf (char*,TYPE_5__*,int) ;
 int resel_bad_lun ;
 int sym_clr_bit (int ,int ) ;
 int sym_insque_head (int *,int *) ;
 TYPE_3__* sym_lp (TYPE_2__*,int ) ;
 int sym_remque (int *) ;

__attribute__((used)) static void sym_free_ccb(hcb_p np, ccb_p cp)
{
 tcb_p tp = &np->target[cp->target];
 lcb_p lp = sym_lp(tp, cp->lun);

 if (DEBUG_FLAGS & DEBUG_TAGS) {
  PRINT_LUN(np, cp->target, cp->lun);
  printf ("ccb @%p freeing tag %d.\n", cp, cp->tag);
 }




 if (lp) {



  if (cp->tag != NO_TAG) {



   lp->cb_tags[lp->if_tag] = cp->tag;
   if (++lp->if_tag == SYM_CONF_MAX_TASK)
    lp->if_tag = 0;




   lp->itlq_tbl[cp->tag] = cpu_to_scr(np->bad_itlq_ba);
   --lp->busy_itlq;
  } else {




   lp->head.itl_task_sa = cpu_to_scr(np->bad_itl_ba);
   --lp->busy_itl;
  }



  if (lp->busy_itlq == 0 && lp->busy_itl == 0)
   lp->head.resel_sa =
    cpu_to_scr(SCRIPTB_BA (np, resel_bad_lun));
 }




 else
  sym_clr_bit(tp->busy0_map, cp->lun);






 if (cp == tp->nego_cp)
  tp->nego_cp = ((void*)0);
 if (cp->dmamapped) {
  bus_dmamap_unload(np->data_dmat, cp->dmamap);
  cp->dmamapped = 0;
 }




 cp->cam_ccb = ((void*)0);
 cp->host_status = HS_IDLE;
 sym_remque(&cp->link_ccbq);
 sym_insque_head(&cp->link_ccbq, &np->free_ccbq);
}
