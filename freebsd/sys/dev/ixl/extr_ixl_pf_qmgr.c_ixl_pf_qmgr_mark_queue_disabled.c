
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct ixl_pf_qtag {struct ixl_pf_qmgr* qmgr; } ;
struct ixl_pf_qmgr {TYPE_1__* qinfo; } ;
struct TYPE_2__ {int tx_enabled; int rx_enabled; } ;


 int MPASS (int ) ;
 size_t ixl_pf_qidx_from_vsi_qidx (struct ixl_pf_qtag*,size_t) ;

void
ixl_pf_qmgr_mark_queue_disabled(struct ixl_pf_qtag *qtag, u16 vsi_qidx, bool tx)
{
 MPASS(qtag != ((void*)0));

 struct ixl_pf_qmgr *qmgr = qtag->qmgr;
 u16 pf_qidx = ixl_pf_qidx_from_vsi_qidx(qtag, vsi_qidx);
 if (tx)
  qmgr->qinfo[pf_qidx].tx_enabled = 0;
 else
  qmgr->qinfo[pf_qidx].rx_enabled = 0;
}
