
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct virtio_blk_config {int dummy; } ;
struct beri_vtblk_softc {TYPE_1__* cdev; int pio_recv; int pio_send; int beri_mem_offset; int vtblk_ktd; int dev; int sc_mtx; int cfg; int * res; int bsh; int bst; } ;
typedef int device_t ;
struct TYPE_2__ {struct beri_vtblk_softc* si_drv1; } ;


 int ENXIO ;
 int GID_WHEEL ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int S_IRWXU ;
 int UID_ROOT ;
 int beri_cdevsw ;
 int beri_spec ;
 scalar_t__ bus_alloc_resources (int ,int ,int *) ;
 int device_get_nameunit (int ) ;
 struct beri_vtblk_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int kthread_add (int ,struct beri_vtblk_softc*,int *,int *,int ,int ,char*) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int ,char*) ;
 int malloc (int,int ,int) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;
 scalar_t__ setup_offset (int ,int *) ;
 scalar_t__ setup_pio (int ,char*,int *) ;
 int sx_init (int *,int ) ;
 int vtblk_thread ;

__attribute__((used)) static int
beri_vtblk_attach(device_t dev)
{
 struct beri_vtblk_softc *sc;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;

 if (bus_alloc_resources(dev, beri_spec, sc->res)) {
  device_printf(dev, "could not allocate resources\n");
  return (ENXIO);
 }


 sc->bst = rman_get_bustag(sc->res[0]);
 sc->bsh = rman_get_bushandle(sc->res[0]);

 sc->cfg = malloc(sizeof(struct virtio_blk_config),
  M_DEVBUF, M_NOWAIT|M_ZERO);

 sx_init(&sc->sc_mtx, device_get_nameunit(sc->dev));

 error = kthread_add(vtblk_thread, sc, ((void*)0), &sc->vtblk_ktd,
  0, 0, "beri_virtio_block");
 if (error) {
  device_printf(dev, "cannot create kthread\n");
  return (ENXIO);
 }

 if (setup_offset(dev, &sc->beri_mem_offset) != 0)
  return (ENXIO);
 if (setup_pio(dev, "pio-send", &sc->pio_send) != 0)
  return (ENXIO);
 if (setup_pio(dev, "pio-recv", &sc->pio_recv) != 0)
  return (ENXIO);

 sc->cdev = make_dev(&beri_cdevsw, 0, UID_ROOT, GID_WHEEL,
     S_IRWXU, "beri_vtblk");
 if (sc->cdev == ((void*)0)) {
  device_printf(dev, "Failed to create character device.\n");
  return (ENXIO);
 }

 sc->cdev->si_drv1 = sc;
 return (0);
}
