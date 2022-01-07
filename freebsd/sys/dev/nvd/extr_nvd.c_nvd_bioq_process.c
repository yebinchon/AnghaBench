
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvd_disk {scalar_t__ cur_depth; int bioqlock; int bioq; } ;
struct bio {int bio_flags; } ;


 int BIO_ORDERED ;
 scalar_t__ NVD_ODEPTH ;
 scalar_t__ __predict_false (int) ;
 struct bio* bioq_takefirst (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nvd_bio_submit (struct nvd_disk*,struct bio*) ;
 int tsleep (scalar_t__*,int ,char*,int) ;

__attribute__((used)) static void
nvd_bioq_process(void *arg, int pending)
{
 struct nvd_disk *ndisk = arg;
 struct bio *bp;

 for (;;) {
  mtx_lock(&ndisk->bioqlock);
  bp = bioq_takefirst(&ndisk->bioq);
  mtx_unlock(&ndisk->bioqlock);
  if (bp == ((void*)0))
   break;

  if (__predict_false(bp->bio_flags & BIO_ORDERED)) {




   while (ndisk->cur_depth > 0)
    tsleep(&ndisk->cur_depth, 0, "nvdorb", 1);
  } else {




   while (ndisk->cur_depth >= NVD_ODEPTH)
    tsleep(&ndisk->cur_depth, 0, "nvdora", 1);
  }

  nvd_bio_submit(ndisk, bp);
 }
}
