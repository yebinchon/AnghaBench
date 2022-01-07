
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_pf_qmgr {int * qinfo; } ;


 int M_IXL ;
 int free (int *,int ) ;

void
ixl_pf_qmgr_destroy(struct ixl_pf_qmgr *qmgr)
{
 free(qmgr->qinfo, M_IXL);
 qmgr->qinfo = ((void*)0);
}
