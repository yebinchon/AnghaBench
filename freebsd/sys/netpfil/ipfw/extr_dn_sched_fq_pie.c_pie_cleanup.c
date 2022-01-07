
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pie_status {int lock_mtx; int aqm_pie_callout; } ;
struct fq_pie_flow {struct pie_status pst; } ;


 int SBT_1US ;
 int callout_reset_sbt (int *,int ,int ,int ,struct fq_pie_flow*,int ) ;
 int fqpie_callout_cleanup ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
pie_cleanup(struct fq_pie_flow *q)
{
 struct pie_status *pst = &q->pst;

 mtx_lock(&pst->lock_mtx);
 callout_reset_sbt(&pst->aqm_pie_callout,
  SBT_1US, 0, fqpie_callout_cleanup, q, 0);
 mtx_unlock(&pst->lock_mtx);
 return 0;
}
