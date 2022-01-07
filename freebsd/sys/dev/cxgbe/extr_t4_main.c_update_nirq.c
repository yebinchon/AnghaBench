
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intrs_and_queues {int nirq; int nrxq; int nofldrxq; int num_vis; int nofldrxq_vi; int nnmrxq_vi; int nrxq_vi; } ;


 int T4_EXTRA_INTR ;
 int max (int ,int ) ;

__attribute__((used)) static void
update_nirq(struct intrs_and_queues *iaq, int nports)
{
 int extra = T4_EXTRA_INTR;

 iaq->nirq = extra;
 iaq->nirq += nports * (iaq->nrxq + iaq->nofldrxq);
 iaq->nirq += nports * (iaq->num_vis - 1) *
     max(iaq->nrxq_vi, iaq->nnmrxq_vi);
 iaq->nirq += nports * (iaq->num_vis - 1) * iaq->nofldrxq_vi;
}
