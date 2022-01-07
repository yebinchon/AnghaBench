
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vf_resources {int niqflint; int nethctrl; int neq; } ;
struct intrs_and_queues {int intr_type; int nirq; int ntxq; int nrxq; } ;
struct TYPE_2__ {int nports; struct vf_resources vfres; } ;
struct adapter {int dev; TYPE_1__ params; } ;


 int ENXIO ;
 int INTR_INTX ;
 int INTR_MSI ;
 int INTR_MSIX ;
 int KASSERT (int,char*) ;
 int T4VF_EXTRA_INTR ;
 int bzero (struct intrs_and_queues*,int) ;
 int device_printf (int ,char*,int,int,...) ;
 int pci_alloc_msi (int ,int*) ;
 int pci_alloc_msix (int ,int*) ;
 int pci_msi_count (int ) ;
 int pci_msix_count (int ) ;
 int pci_release_msi (int ) ;
 scalar_t__ powerof2 (int) ;
 int t4_intr_types ;
 int t4_nrxq ;
 int t4_ntxq ;

__attribute__((used)) static int
cfg_itype_and_nqueues(struct adapter *sc, struct intrs_and_queues *iaq)
{
 struct vf_resources *vfres;
 int nrxq, ntxq, nports;
 int itype, iq_avail, navail, rc;





 vfres = &sc->params.vfres;
 nports = sc->params.nports;
 bzero(iaq, sizeof(*iaq));

 for (itype = INTR_MSIX; itype != 0; itype >>= 1) {
  if (itype == INTR_INTX)
   continue;

  if (itype == INTR_MSIX)
   navail = pci_msix_count(sc->dev);
  else
   navail = pci_msi_count(sc->dev);

  if (navail == 0)
   continue;

  iaq->intr_type = itype;
  iaq->nirq = T4VF_EXTRA_INTR;






  iq_avail = vfres->niqflint - iaq->nirq;
  if (iq_avail < nports) {
   device_printf(sc->dev,
       "Not enough ingress queues (%d) for %d ports\n",
       vfres->niqflint, nports);
   return (ENXIO);
  }







  if (iaq->nirq + nports <= navail) {
   if (iq_avail > navail - iaq->nirq)
    iq_avail = navail - iaq->nirq;
  }

  nrxq = nports * t4_nrxq;
  if (nrxq > iq_avail) {



   nrxq = (iq_avail / nports) * nports;
  }
  KASSERT(nrxq <= iq_avail, ("too many ingress queues"));





  if (vfres->nethctrl < nports) {
   device_printf(sc->dev,
       "Not enough ETH queues (%d) for %d ports\n",
       vfres->nethctrl, nports);
   return (ENXIO);
  }

  ntxq = nports * t4_ntxq;
  if (ntxq > vfres->nethctrl) {



   ntxq = (vfres->nethctrl / nports) * nports;
  }
  KASSERT(ntxq <= vfres->nethctrl, ("too many ETH queues"));




  if (vfres->neq < nports * 2) {
   device_printf(sc->dev,
       "Not enough egress queues (%d) for %d ports\n",
       vfres->neq, nports);
   return (ENXIO);
  }
  if (nrxq + ntxq > vfres->neq) {

   nrxq = ntxq = nports;
  }
  KASSERT(nrxq <= iq_avail, ("too many ingress queues"));
  KASSERT(ntxq <= vfres->nethctrl, ("too many ETH queues"));
  KASSERT(nrxq + ntxq <= vfres->neq, ("too many egress queues"));





  iaq->nirq += nrxq;
  iaq->ntxq = ntxq;
  iaq->nrxq = nrxq;
  if (iaq->nirq <= navail &&
      (itype != INTR_MSI || powerof2(iaq->nirq))) {
   navail = iaq->nirq;
   if (itype == INTR_MSIX)
    rc = pci_alloc_msix(sc->dev, &navail);
   else
    rc = pci_alloc_msi(sc->dev, &navail);
   if (rc != 0) {
    device_printf(sc->dev,
      "failed to allocate vectors:%d, type=%d, req=%d, rcvd=%d\n",
        itype, rc, iaq->nirq, navail);
    return (rc);
   }
   if (navail == iaq->nirq) {
    return (0);
   }
   pci_release_msi(sc->dev);
  }


  iaq->nirq = 1;
  navail = iaq->nirq;
  if (itype == INTR_MSIX)
   rc = pci_alloc_msix(sc->dev, &navail);
  else
   rc = pci_alloc_msi(sc->dev, &navail);
  if (rc != 0)
   device_printf(sc->dev,
      "failed to allocate vectors:%d, type=%d, req=%d, rcvd=%d\n",
       itype, rc, iaq->nirq, navail);
  return (rc);
 }

 device_printf(sc->dev,
     "failed to find a usable interrupt type.  "
     "allowed=%d, msi-x=%d, msi=%d, intx=1", t4_intr_types,
     pci_msix_count(sc->dev), pci_msi_count(sc->dev));

 return (ENXIO);
}
