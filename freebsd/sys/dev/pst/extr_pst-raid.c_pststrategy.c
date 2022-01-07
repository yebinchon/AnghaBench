
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pst_softc {TYPE_2__* iop; int queue; } ;
struct bio {TYPE_1__* bio_disk; } ;
struct TYPE_4__ {int mtx; } ;
struct TYPE_3__ {struct pst_softc* d_drv1; } ;


 int bioq_disksort (int *,struct bio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pst_start (struct pst_softc*) ;

__attribute__((used)) static void
pststrategy(struct bio *bp)
{
    struct pst_softc *psc = bp->bio_disk->d_drv1;

    mtx_lock(&psc->iop->mtx);
    bioq_disksort(&psc->queue, bp);
    pst_start(psc);
    mtx_unlock(&psc->iop->mtx);
}
