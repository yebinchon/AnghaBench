
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mfi_system_pd {scalar_t__ pd_id; struct mfi_softc* pd_controller; } ;
struct mfi_softc {int mfi_io_lock; } ;
struct bio {void* bio_driver2; void* bio_driver1; int bio_bcount; int bio_resid; int bio_flags; int bio_error; TYPE_1__* bio_disk; } ;
struct TYPE_2__ {struct mfi_system_pd* d_drv1; } ;


 int BIO_ERROR ;
 int EINVAL ;
 scalar_t__ MFI_SYS_PD_IO ;
 int biodone (struct bio*) ;
 int mfi_enqueue_bio (struct mfi_softc*,struct bio*) ;
 int mfi_startio (struct mfi_softc*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
mfi_syspd_strategy(struct bio *bio)
{
 struct mfi_system_pd *sc;
 struct mfi_softc *controller;

 sc = bio->bio_disk->d_drv1;

 if (sc == ((void*)0)) {
  bio->bio_error = EINVAL;
  bio->bio_flags |= BIO_ERROR;
  bio->bio_resid = bio->bio_bcount;
  biodone(bio);
  return;
 }

 controller = sc->pd_controller;
 bio->bio_driver1 = (void *)(uintptr_t)sc->pd_id;

 bio->bio_driver2 = (void *)MFI_SYS_PD_IO;
 mtx_lock(&controller->mfi_io_lock);
 mfi_enqueue_bio(controller, bio);
 mfi_startio(controller);
 mtx_unlock(&controller->mfi_io_lock);
 return;
}
