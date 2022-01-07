
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_paddr_t ;
struct uio {int uio_iovcnt; int uio_offset; int uio_resid; void* uio_td; void* uio_rw; void* uio_segflg; struct iovec* uio_iov; } ;
struct iovec {char* iov_base; int iov_len; } ;
struct g_spa {int spa_g_proc_exiting; int spa_g_devstat; TYPE_1__* dev; int spa_g_mtx; int spa_g_queue; int spa_g_proc_run; } ;
struct bio {scalar_t__ bio_cmd; int bio_flags; int bio_offset; char* bio_data; int bio_length; int bio_completed; int bio_bcount; int bio_resid; int bio_ma_offset; int bio_ma; } ;
struct TYPE_3__ {int * spa_kva; int spa_memattr; scalar_t__ spa_len; scalar_t__ spa_phys_base; } ;


 scalar_t__ BIO_FLUSH ;
 scalar_t__ BIO_READ ;
 int BIO_UNMAPPED ;
 scalar_t__ BIO_WRITE ;
 int EOPNOTSUPP ;
 int PRIBIO ;
 void* UIO_READ ;
 void* UIO_SYSSPACE ;
 void* UIO_WRITE ;
 struct bio* bioq_takefirst (int *) ;
 void* curthread ;
 int devstat_end_transaction_bio (int ,struct bio*) ;
 int g_io_deliver (struct bio*,int) ;
 int kproc_exit (int ) ;
 int msleep (int *,int *,int ,char*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nvdimm_spa_g_all_unmapped (TYPE_1__*,struct bio*,scalar_t__) ;
 int nvdimm_spa_uio (TYPE_1__*,struct uio*) ;
 int pmap_flush_cache_phys_range (scalar_t__,scalar_t__,int ) ;
 int pmap_large_map_wb (int *,scalar_t__) ;
 int uiomove_fromphys (int ,int ,int ,struct uio*) ;
 int wakeup (int *) ;

__attribute__((used)) static void
nvdimm_spa_g_thread(void *arg)
{
 struct g_spa *sc;
 struct bio *bp;
 struct uio auio;
 struct iovec aiovec;
 int error;

 sc = arg;
 for (;;) {
  mtx_lock(&sc->spa_g_mtx);
  for (;;) {
   bp = bioq_takefirst(&sc->spa_g_queue);
   if (bp != ((void*)0))
    break;
   msleep(&sc->spa_g_queue, &sc->spa_g_mtx, PRIBIO,
       "spa_g", 0);
   if (!sc->spa_g_proc_run) {
    sc->spa_g_proc_exiting = 1;
    wakeup(&sc->spa_g_queue);
    mtx_unlock(&sc->spa_g_mtx);
    kproc_exit(0);
   }
   continue;
  }
  mtx_unlock(&sc->spa_g_mtx);
  if (bp->bio_cmd != BIO_READ && bp->bio_cmd != BIO_WRITE &&
      bp->bio_cmd != BIO_FLUSH) {
   error = EOPNOTSUPP;
   goto completed;
  }

  error = 0;
  if (bp->bio_cmd == BIO_FLUSH) {
   if (sc->dev->spa_kva != ((void*)0)) {
    pmap_large_map_wb(sc->dev->spa_kva,
        sc->dev->spa_len);
   } else {
    pmap_flush_cache_phys_range(
        (vm_paddr_t)sc->dev->spa_phys_base,
        (vm_paddr_t)sc->dev->spa_phys_base +
        sc->dev->spa_len, sc->dev->spa_memattr);
   }



   goto completed;
  }

  if ((bp->bio_flags & BIO_UNMAPPED) != 0) {
   if (sc->dev->spa_kva != ((void*)0)) {
    aiovec.iov_base = (char *)sc->dev->spa_kva +
        bp->bio_offset;
    aiovec.iov_len = bp->bio_length;
    auio.uio_iov = &aiovec;
    auio.uio_iovcnt = 1;
    auio.uio_resid = bp->bio_length;
    auio.uio_offset = bp->bio_offset;
    auio.uio_segflg = UIO_SYSSPACE;
    auio.uio_rw = bp->bio_cmd == BIO_READ ?
        UIO_WRITE : UIO_READ;
    auio.uio_td = curthread;
    error = uiomove_fromphys(bp->bio_ma,
        bp->bio_ma_offset, bp->bio_length, &auio);
    bp->bio_resid = auio.uio_resid;
   } else {
    nvdimm_spa_g_all_unmapped(sc->dev, bp,
        bp->bio_cmd);
    bp->bio_resid = bp->bio_length;
    error = 0;
   }
  } else {
   aiovec.iov_base = bp->bio_data;
   aiovec.iov_len = bp->bio_length;
   auio.uio_iov = &aiovec;
   auio.uio_iovcnt = 1;
   auio.uio_resid = bp->bio_length;
   auio.uio_offset = bp->bio_offset;
   auio.uio_segflg = UIO_SYSSPACE;
   auio.uio_rw = bp->bio_cmd == BIO_READ ? UIO_READ :
       UIO_WRITE;
   auio.uio_td = curthread;
   error = nvdimm_spa_uio(sc->dev, &auio);
   bp->bio_resid = auio.uio_resid;
  }
  bp->bio_bcount = bp->bio_length;
  devstat_end_transaction_bio(sc->spa_g_devstat, bp);
completed:
  bp->bio_completed = bp->bio_length;
  g_io_deliver(bp, error);
 }
}
