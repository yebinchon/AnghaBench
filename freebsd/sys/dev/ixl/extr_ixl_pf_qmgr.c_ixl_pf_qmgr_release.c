
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct ixl_pf_qtag {scalar_t__ type; size_t num_allocated; size_t* qidx; int * qmgr; } ;
struct ixl_pf_qmgr {int * qinfo; } ;


 int EINVAL ;
 scalar_t__ IXL_PF_QALLOC_SCATTERED ;
 int bzero (int *,int) ;

int
ixl_pf_qmgr_release(struct ixl_pf_qmgr *qmgr, struct ixl_pf_qtag *qtag)
{
 u16 i, qidx;

 if (qtag == ((void*)0))
  return (EINVAL);

 if (qtag->type == IXL_PF_QALLOC_SCATTERED) {
  for (i = 0; i < qtag->num_allocated; i++) {
   qidx = qtag->qidx[i];
   bzero(&qmgr->qinfo[qidx], sizeof(qmgr->qinfo[qidx]));
  }
 } else {
  u16 first_index = qtag->qidx[0];
  for (i = first_index; i < first_index + qtag->num_allocated; i++)
   bzero(&qmgr->qinfo[i], sizeof(qmgr->qinfo[qidx]));
 }

 qtag->qmgr = ((void*)0);
 return (0);
}
