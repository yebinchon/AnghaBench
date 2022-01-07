
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
typedef int uint32_t ;
struct timeval {scalar_t__ tv_sec; } ;
struct nvme_io_test_internal {scalar_t__ size; scalar_t__ opc; int flags; scalar_t__ time; int td_active; void** io_completed; TYPE_1__* ns; int start; int td_idx; } ;
struct mtx {int dummy; } ;
struct cdevsw {int (* d_strategy ) (struct bio*) ;} ;
struct cdev {struct cdevsw* si_devsw; } ;
struct bio {scalar_t__ bio_bcount; int bio_flags; scalar_t__ bio_resid; void* bio_data; void* bio_offset; struct cdev* bio_dev; int bio_done; int bio_cmd; } ;
struct TYPE_3__ {struct cdev* cdev; } ;


 int BIO_ERROR ;
 int BIO_READ ;
 int BIO_WRITE ;
 int M_NVME ;
 int M_WAITOK ;
 scalar_t__ NVME_OPC_READ ;
 int NVME_TEST_FLAG_REFTHREAD ;
 int PRIBIO ;
 int atomic_fetchadd_int (int *,int) ;
 int atomic_subtract_int (int *,int) ;
 struct cdevsw* dev_refthread (struct cdev*,int*) ;
 int dev_relthread (struct cdev*,int) ;
 int free (void*,int ) ;
 struct bio* g_alloc_bio () ;
 int g_destroy_bio (struct bio*) ;
 int getmicrouptime (struct timeval*) ;
 int kthread_exit () ;
 void* malloc (scalar_t__,int ,int ) ;
 int mb () ;
 int memset (struct bio*,int ,int) ;
 int msleep (struct bio*,struct mtx*,int ,char*,int ) ;
 int mtx_lock (struct mtx*) ;
 struct mtx* mtx_pool_find (int ,struct bio*) ;
 int mtx_unlock (struct mtx*) ;
 int mtxpool_sleep ;
 int nvme_ns_bio_test_cb ;
 int nvme_ns_get_sector_size (TYPE_1__*) ;
 scalar_t__ nvme_ns_get_size (TYPE_1__*) ;
 int stub1 (struct bio*) ;
 int timevalsub (struct timeval*,int *) ;
 int wakeup_one (struct nvme_io_test_internal*) ;

__attribute__((used)) static void
nvme_ns_bio_test(void *arg)
{
 struct nvme_io_test_internal *io_test = arg;
 struct cdevsw *csw;
 struct mtx *mtx;
 struct bio *bio;
 struct cdev *dev;
 void *buf;
 struct timeval t;
 uint64_t io_completed = 0, offset;
 uint32_t idx;
 int ref;

 buf = malloc(io_test->size, M_NVME, M_WAITOK);
 idx = atomic_fetchadd_int(&io_test->td_idx, 1);
 dev = io_test->ns->cdev;

 offset = idx * 2048 * nvme_ns_get_sector_size(io_test->ns);

 while (1) {

  bio = g_alloc_bio();

  memset(bio, 0, sizeof(*bio));
  bio->bio_cmd = (io_test->opc == NVME_OPC_READ) ?
      BIO_READ : BIO_WRITE;
  bio->bio_done = nvme_ns_bio_test_cb;
  bio->bio_dev = dev;
  bio->bio_offset = offset;
  bio->bio_data = buf;
  bio->bio_bcount = io_test->size;

  if (io_test->flags & NVME_TEST_FLAG_REFTHREAD) {
   csw = dev_refthread(dev, &ref);
  } else
   csw = dev->si_devsw;

  mtx = mtx_pool_find(mtxpool_sleep, bio);
  mtx_lock(mtx);
  (*csw->d_strategy)(bio);
  msleep(bio, mtx, PRIBIO, "biotestwait", 0);
  mtx_unlock(mtx);

  if (io_test->flags & NVME_TEST_FLAG_REFTHREAD) {
   dev_relthread(dev, ref);
  }

  if ((bio->bio_flags & BIO_ERROR) || (bio->bio_resid > 0))
   break;

  g_destroy_bio(bio);

  io_completed++;

  getmicrouptime(&t);
  timevalsub(&t, &io_test->start);

  if (t.tv_sec >= io_test->time)
   break;

  offset += io_test->size;
  if ((offset + io_test->size) > nvme_ns_get_size(io_test->ns))
   offset = 0;
 }

 io_test->io_completed[idx] = io_completed;
 wakeup_one(io_test);

 free(buf, M_NVME);

 atomic_subtract_int(&io_test->td_active, 1);
 mb();

 kthread_exit();
}
