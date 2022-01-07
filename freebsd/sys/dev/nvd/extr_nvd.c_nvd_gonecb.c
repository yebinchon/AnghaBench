
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvd_disk {int bioqlock; int tq; TYPE_1__* ctrlr; int disk; } ;
struct disk {scalar_t__ d_drv1; } ;
struct TYPE_2__ {int disk_head; } ;


 int M_NVD ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct nvd_disk*,int ) ;
 int ctrlr_tailq ;
 int disk_destroy (int ) ;
 int disk_head ;
 int free (struct nvd_disk*,int ) ;
 int global_tailq ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nvd_lock ;
 int taskqueue_free (int ) ;
 int wakeup (int *) ;

__attribute__((used)) static void
nvd_gonecb(struct disk *dp)
{
 struct nvd_disk *ndisk = (struct nvd_disk *)dp->d_drv1;

 disk_destroy(ndisk->disk);
 mtx_lock(&nvd_lock);
 TAILQ_REMOVE(&disk_head, ndisk, global_tailq);
 TAILQ_REMOVE(&ndisk->ctrlr->disk_head, ndisk, ctrlr_tailq);
 if (TAILQ_EMPTY(&ndisk->ctrlr->disk_head))
  wakeup(&ndisk->ctrlr->disk_head);
 mtx_unlock(&nvd_lock);
 taskqueue_free(ndisk->tq);
 mtx_destroy(&ndisk->bioqlock);
 free(ndisk, M_NVD);
}
