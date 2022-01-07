
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cesa_tdma_desc {TYPE_1__* ctd_cthd; scalar_t__ ctd_cthd_paddr; } ;
struct cesa_request {int cr_tdesc; } ;
struct TYPE_2__ {scalar_t__ cthd_next; } ;


 int STAILQ_EMPTY (int *) ;
 int STAILQ_INSERT_TAIL (int *,struct cesa_tdma_desc*,int ) ;
 struct cesa_tdma_desc* STAILQ_LAST (int *,int ,int ) ;
 int cesa_tdma_desc ;
 int ctd_stq ;

__attribute__((used)) static void
cesa_append_tdesc(struct cesa_request *cr, struct cesa_tdma_desc *ctd)
{
 struct cesa_tdma_desc *ctd_prev;

 if (!STAILQ_EMPTY(&cr->cr_tdesc)) {
  ctd_prev = STAILQ_LAST(&cr->cr_tdesc, cesa_tdma_desc, ctd_stq);
  ctd_prev->ctd_cthd->cthd_next = ctd->ctd_cthd_paddr;
 }

 ctd->ctd_cthd->cthd_next = 0;
 STAILQ_INSERT_TAIL(&cr->cr_tdesc, ctd, ctd_stq);
}
