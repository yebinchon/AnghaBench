
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vtballoon_softc {int vtballoon_deflate_vq; int vtballoon_inflate_vq; int vtballoon_td; int * vtballoon_page_frames; int vtballoon_pages; int vtballoon_dev; } ;
typedef int device_t ;


 int ENOMEM ;
 int INTR_TYPE_MISC ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INIT (int *) ;
 int VTBALLOON_LOCK_INIT (struct vtballoon_softc*,int ) ;
 int VTBALLOON_PAGES_PER_REQUEST ;
 int device_get_nameunit (int ) ;
 struct vtballoon_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int kthread_add (int ,struct vtballoon_softc*,int *,int *,int ,int ,char*) ;
 int * malloc (int,int ,int) ;
 int virtio_set_feature_desc (int ,int ) ;
 int virtio_setup_intr (int ,int ) ;
 int virtqueue_enable_intr (int ) ;
 int vtballoon_add_sysctl (struct vtballoon_softc*) ;
 int vtballoon_alloc_virtqueues (struct vtballoon_softc*) ;
 int vtballoon_detach (int ) ;
 int vtballoon_feature_desc ;
 int vtballoon_negotiate_features (struct vtballoon_softc*) ;
 int vtballoon_thread ;

__attribute__((used)) static int
vtballoon_attach(device_t dev)
{
 struct vtballoon_softc *sc;
 int error;

 sc = device_get_softc(dev);
 sc->vtballoon_dev = dev;

 VTBALLOON_LOCK_INIT(sc, device_get_nameunit(dev));
 TAILQ_INIT(&sc->vtballoon_pages);

 vtballoon_add_sysctl(sc);

 virtio_set_feature_desc(dev, vtballoon_feature_desc);
 vtballoon_negotiate_features(sc);

 sc->vtballoon_page_frames = malloc(VTBALLOON_PAGES_PER_REQUEST *
     sizeof(uint32_t), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (sc->vtballoon_page_frames == ((void*)0)) {
  error = ENOMEM;
  device_printf(dev,
      "cannot allocate page frame request array\n");
  goto fail;
 }

 error = vtballoon_alloc_virtqueues(sc);
 if (error) {
  device_printf(dev, "cannot allocate virtqueues\n");
  goto fail;
 }

 error = virtio_setup_intr(dev, INTR_TYPE_MISC);
 if (error) {
  device_printf(dev, "cannot setup virtqueue interrupts\n");
  goto fail;
 }

 error = kthread_add(vtballoon_thread, sc, ((void*)0), &sc->vtballoon_td,
     0, 0, "virtio_balloon");
 if (error) {
  device_printf(dev, "cannot create balloon kthread\n");
  goto fail;
 }

 virtqueue_enable_intr(sc->vtballoon_inflate_vq);
 virtqueue_enable_intr(sc->vtballoon_deflate_vq);

fail:
 if (error)
  vtballoon_detach(dev);

 return (error);
}
