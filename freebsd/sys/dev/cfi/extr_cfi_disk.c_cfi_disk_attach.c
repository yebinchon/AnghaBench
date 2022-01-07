
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cfi_disk_softc {int iotask; int tq; int bioq; int qlock; TYPE_3__* disk; TYPE_2__* parent; } ;
typedef int device_t ;
struct TYPE_7__ {char* d_name; struct cfi_disk_softc* d_drv1; int d_mediasize; int d_stripesize; int d_maxsize; int d_sectorsize; int d_getattr; int * d_dump; int d_ioctl; int d_strategy; int d_close; int d_open; int d_unit; } ;
struct TYPE_6__ {int sc_width; int sc_regions; TYPE_1__* sc_region; int sc_size; } ;
struct TYPE_5__ {int r_blksz; } ;


 int CFI_DISK_MAXIOSIZE ;
 int CFI_DISK_SECSIZE ;
 int DISK_VERSION ;
 int EINVAL ;
 int ENOMEM ;
 int MTX_DEF ;
 int M_NOWAIT ;
 int PI_DISK ;
 int TASK_INIT (int *,int ,int ,struct cfi_disk_softc*) ;
 int bioq_init (int *) ;
 int cfi_disk_close ;
 int cfi_disk_getattr ;
 int cfi_disk_ioctl ;
 int cfi_disk_open ;
 int cfi_disk_strategy ;
 int cfi_io_proc ;
 int device_get_parent (int ) ;
 void* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 TYPE_3__* disk_alloc () ;
 int disk_create (TYPE_3__*,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int taskqueue_create (char*,int ,int ,int *) ;
 int taskqueue_start_threads (int *,int,int ,char*) ;
 int taskqueue_thread_enqueue ;

__attribute__((used)) static int
cfi_disk_attach(device_t dev)
{
 struct cfi_disk_softc *sc = device_get_softc(dev);

 sc->parent = device_get_softc(device_get_parent(dev));

 if (sc->parent->sc_width != 1 &&
     sc->parent->sc_width != 2 &&
     sc->parent->sc_width != 4)
  return EINVAL;

 sc->disk = disk_alloc();
 if (sc->disk == ((void*)0))
  return ENOMEM;
 sc->disk->d_name = "cfid";
 sc->disk->d_unit = device_get_unit(dev);
 sc->disk->d_open = cfi_disk_open;
 sc->disk->d_close = cfi_disk_close;
 sc->disk->d_strategy = cfi_disk_strategy;
 sc->disk->d_ioctl = cfi_disk_ioctl;
 sc->disk->d_dump = ((void*)0);
 sc->disk->d_getattr = cfi_disk_getattr;
 sc->disk->d_sectorsize = CFI_DISK_SECSIZE;
 sc->disk->d_mediasize = sc->parent->sc_size;
 sc->disk->d_maxsize = CFI_DISK_MAXIOSIZE;

 if (sc->parent->sc_regions) {






  sc->disk->d_stripesize =
      sc->parent->sc_region[sc->parent->sc_regions-1].r_blksz;
 } else
  sc->disk->d_stripesize = sc->disk->d_mediasize;
 sc->disk->d_drv1 = sc;
 disk_create(sc->disk, DISK_VERSION);

 mtx_init(&sc->qlock, "CFID I/O lock", ((void*)0), MTX_DEF);
 bioq_init(&sc->bioq);

 sc->tq = taskqueue_create("cfid_taskq", M_NOWAIT,
  taskqueue_thread_enqueue, &sc->tq);
 taskqueue_start_threads(&sc->tq, 1, PI_DISK, "cfid taskq");

 TASK_INIT(&sc->iotask, 0, cfi_io_proc, sc);

 return 0;
}
