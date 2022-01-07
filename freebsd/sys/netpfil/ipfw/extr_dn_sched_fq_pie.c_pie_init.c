
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pie_status {int one_third_q_size; int lock_mtx; int aqm_pie_callout; struct dn_aqm_pie_parms* parms; } ;
struct TYPE_4__ {int limit; int flows_cnt; } ;
struct fq_pie_schk {TYPE_2__ cfg; } ;
struct fq_pie_flow {TYPE_1__* psi_extra; struct pie_status pst; } ;
struct dn_aqm_pie_parms {int dummy; } ;
struct TYPE_3__ {int nr_active_q; } ;


 int CALLOUT_RETURNUNLOCKED ;
 int D (char*) ;
 int EINVAL ;
 int MTX_DEF ;
 int callout_init_mtx (int *,int *,int ) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
pie_init(struct fq_pie_flow *q, struct fq_pie_schk *fqpie_schk)
{
 struct pie_status *pst=&q->pst;
 struct dn_aqm_pie_parms *pprms = pst->parms;

 int err = 0;
 if (!pprms){
  D("AQM_PIE is not configured");
  err = EINVAL;
 } else {
  q->psi_extra->nr_active_q++;



  pst->one_third_q_size = (fqpie_schk->cfg.limit /
   fqpie_schk->cfg.flows_cnt) / 3;

  mtx_init(&pst->lock_mtx, "mtx_pie", ((void*)0), MTX_DEF);
  callout_init_mtx(&pst->aqm_pie_callout, &pst->lock_mtx,
   CALLOUT_RETURNUNLOCKED);
 }

 return err;
}
