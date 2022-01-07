
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t u_char ;
typedef int * tcb_p ;
typedef TYPE_2__* lcb_p ;
typedef TYPE_3__* hcb_p ;
struct TYPE_10__ {int notask_ba; int * target; } ;
struct TYPE_8__ {void* itlq_tbl_sa; } ;
struct TYPE_9__ {int* cb_tags; void** itlq_tbl; TYPE_1__ head; } ;


 int SYM_CONF_MAX_TASK ;
 void* cpu_to_scr (int ) ;
 TYPE_2__* sym_alloc_lcb (TYPE_3__*,size_t,size_t) ;
 int* sym_calloc (int,char*) ;
 void** sym_calloc_dma (int,char*) ;
 TYPE_2__* sym_lp (int *,size_t) ;
 int sym_mfree_dma (void**,int,char*) ;
 int vtobus (void**) ;

__attribute__((used)) static void sym_alloc_lcb_tags (hcb_p np, u_char tn, u_char ln)
{
 tcb_p tp = &np->target[tn];
 lcb_p lp = sym_lp(tp, ln);
 int i;




 if (!lp && !(lp = sym_alloc_lcb(np, tn, ln)))
  return;





 lp->itlq_tbl = sym_calloc_dma(SYM_CONF_MAX_TASK*4, "ITLQ_TBL");
 if (!lp->itlq_tbl)
  return;
 lp->cb_tags = sym_calloc(SYM_CONF_MAX_TASK, "CB_TAGS");
 if (!lp->cb_tags) {
  sym_mfree_dma(lp->itlq_tbl, SYM_CONF_MAX_TASK*4, "ITLQ_TBL");
  lp->itlq_tbl = ((void*)0);
  return;
 }




 for (i = 0 ; i < SYM_CONF_MAX_TASK ; i++)
  lp->itlq_tbl[i] = cpu_to_scr(np->notask_ba);




 for (i = 0 ; i < SYM_CONF_MAX_TASK ; i++)
  lp->cb_tags[i] = i;





 lp->head.itlq_tbl_sa = cpu_to_scr(vtobus(lp->itlq_tbl));
}
