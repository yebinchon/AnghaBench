
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int csts; int cc; } ;
struct pci_nvme_softc {scalar_t__ pending_ios; int iosemlock; int mtx; TYPE_1__ regs; struct pci_nvme_ioreq* ioreqs_free; } ;
struct pci_nvme_ioreq {struct pci_nvme_ioreq* next; scalar_t__ sqid; int * nvme_sq; int * sc; } ;


 scalar_t__ NVME_CC_GET_EN (int ) ;
 int NVME_CSTS_GET_RDY (int ) ;
 int NVME_CSTS_RDY ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int sem_post (int *) ;

__attribute__((used)) static void
pci_nvme_release_ioreq(struct pci_nvme_softc *sc, struct pci_nvme_ioreq *req)
{
 req->sc = ((void*)0);
 req->nvme_sq = ((void*)0);
 req->sqid = 0;

 pthread_mutex_lock(&sc->mtx);

 req->next = sc->ioreqs_free;
 sc->ioreqs_free = req;
 sc->pending_ios--;


 if (sc->pending_ios == 0 &&
     NVME_CC_GET_EN(sc->regs.cc) && !(NVME_CSTS_GET_RDY(sc->regs.csts)))
  sc->regs.csts |= NVME_CSTS_RDY;

 pthread_mutex_unlock(&sc->mtx);

 sem_post(&sc->iosemlock);
}
