
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int fc; } ;
struct sbp_softc {TYPE_2__ fd; int dmat; } ;
struct sbp_dev {int dma; TYPE_1__* ocb; int login_callout; TYPE_3__* target; } ;
struct TYPE_6__ {struct sbp_softc* sbp; } ;
struct TYPE_4__ {int dmamap; int timer; } ;


 int M_SBP ;
 int SBP_LOCK (struct sbp_softc*) ;
 int SBP_QUEUE_LEN ;
 int SBP_UNLOCK (struct sbp_softc*) ;
 int bus_dmamap_destroy (int ,int ) ;
 int callout_drain (int *) ;
 int free (struct sbp_dev*,int ) ;
 int fwdma_free (int ,int *) ;

__attribute__((used)) static void
sbp_free_sdev(struct sbp_dev *sdev)
{
 struct sbp_softc *sbp;
 int i;

 if (sdev == ((void*)0))
  return;
 sbp = sdev->target->sbp;
 SBP_UNLOCK(sbp);
 callout_drain(&sdev->login_callout);
 for (i = 0; i < SBP_QUEUE_LEN; i++) {
  callout_drain(&sdev->ocb[i].timer);
  bus_dmamap_destroy(sbp->dmat, sdev->ocb[i].dmamap);
 }
 fwdma_free(sbp->fd.fc, &sdev->dma);
 free(sdev, M_SBP);
 SBP_LOCK(sbp);
}
