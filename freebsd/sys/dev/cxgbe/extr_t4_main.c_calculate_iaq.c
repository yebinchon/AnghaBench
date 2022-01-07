
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intrs_and_queues {int intr_type; int num_vis; int ntxq; scalar_t__ ntxq_vi; int nrxq; scalar_t__ nrxq_vi; int nofldtxq; int nofldrxq; int nirq; scalar_t__ nnmrxq_vi; scalar_t__ nofldrxq_vi; scalar_t__ nnmtxq_vi; scalar_t__ nofldtxq_vi; } ;
struct TYPE_2__ {int nports; } ;
struct adapter {int dev; TYPE_1__ params; } ;


 int INTR_MSI ;
 int MPASS (int) ;
 int bzero (struct intrs_and_queues*,int) ;
 int device_printf (int ,char*,int,int,...) ;
 scalar_t__ is_ethoffload (struct adapter*) ;
 scalar_t__ is_offload (struct adapter*) ;
 int powerof2 (int) ;
 scalar_t__ t4_nnmrxq_vi ;
 scalar_t__ t4_nnmtxq_vi ;
 int t4_nofldrxq ;
 scalar_t__ t4_nofldrxq_vi ;
 int t4_nofldtxq ;
 scalar_t__ t4_nofldtxq_vi ;
 int t4_nrxq ;
 scalar_t__ t4_nrxq_vi ;
 int t4_ntxq ;
 scalar_t__ t4_ntxq_vi ;
 int t4_num_vis ;
 int update_nirq (struct intrs_and_queues*,int const) ;

__attribute__((used)) static void
calculate_iaq(struct adapter *sc, struct intrs_and_queues *iaq, int itype,
    int navail)
{
 int old_nirq;
 const int nports = sc->params.nports;

 MPASS(nports > 0);
 MPASS(navail > 0);

 bzero(iaq, sizeof(*iaq));
 iaq->intr_type = itype;
 iaq->num_vis = t4_num_vis;
 iaq->ntxq = t4_ntxq;
 iaq->ntxq_vi = t4_ntxq_vi;
 iaq->nrxq = t4_nrxq;
 iaq->nrxq_vi = t4_nrxq_vi;
 update_nirq(iaq, nports);
 if (iaq->nirq <= navail &&
     (itype != INTR_MSI || powerof2(iaq->nirq))) {




  goto done;
 }





 while (iaq->num_vis > 1) {
  iaq->num_vis--;
  update_nirq(iaq, nports);
  if (iaq->nirq <= navail &&
      (itype != INTR_MSI || powerof2(iaq->nirq))) {
   device_printf(sc->dev, "virtual interfaces per port "
       "reduced to %d from %d.  nrxq=%u, nofldrxq=%u, "
       "nrxq_vi=%u nofldrxq_vi=%u, nnmrxq_vi=%u.  "
       "itype %d, navail %u, nirq %d.\n",
       iaq->num_vis, t4_num_vis, iaq->nrxq, iaq->nofldrxq,
       iaq->nrxq_vi, iaq->nofldrxq_vi, iaq->nnmrxq_vi,
       itype, navail, iaq->nirq);
   goto done;
  }
 }




 MPASS(iaq->num_vis == 1);
 iaq->ntxq_vi = iaq->nrxq_vi = 0;
 iaq->nofldtxq_vi = iaq->nofldrxq_vi = 0;
 iaq->nnmtxq_vi = iaq->nnmrxq_vi = 0;
 if (iaq->num_vis != t4_num_vis) {
  device_printf(sc->dev, "extra virtual interfaces disabled.  "
      "nrxq=%u, nofldrxq=%u, nrxq_vi=%u nofldrxq_vi=%u, "
      "nnmrxq_vi=%u.  itype %d, navail %u, nirq %d.\n",
      iaq->nrxq, iaq->nofldrxq, iaq->nrxq_vi, iaq->nofldrxq_vi,
      iaq->nnmrxq_vi, itype, navail, iaq->nirq);
 }






 do {
  if (iaq->nrxq > 1) {
   do {
    iaq->nrxq--;
   } while (!powerof2(iaq->nrxq));
  }
  if (iaq->nofldrxq > 1)
   iaq->nofldrxq >>= 1;

  old_nirq = iaq->nirq;
  update_nirq(iaq, nports);
  if (iaq->nirq <= navail &&
      (itype != INTR_MSI || powerof2(iaq->nirq))) {
   device_printf(sc->dev, "running with reduced number of "
       "rx queues because of shortage of interrupts.  "
       "nrxq=%u, nofldrxq=%u.  "
       "itype %d, navail %u, nirq %d.\n", iaq->nrxq,
       iaq->nofldrxq, itype, navail, iaq->nirq);
   goto done;
  }
 } while (old_nirq != iaq->nirq);


 device_printf(sc->dev, "running with minimal number of queues.  "
     "itype %d, navail %u.\n", itype, navail);
 iaq->nirq = 1;
 MPASS(iaq->nrxq == 1);
 iaq->ntxq = 1;
 if (iaq->nofldrxq > 1)
  iaq->nofldtxq = 1;
done:
 MPASS(iaq->num_vis > 0);
 if (iaq->num_vis > 1) {
  MPASS(iaq->nrxq_vi > 0);
  MPASS(iaq->ntxq_vi > 0);
 }
 MPASS(iaq->nirq > 0);
 MPASS(iaq->nrxq > 0);
 MPASS(iaq->ntxq > 0);
 if (itype == INTR_MSI) {
  MPASS(powerof2(iaq->nirq));
 }
}
