
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {scalar_t__ vtblk_max_nsegs; int vtblk_vq; int * vtblk_sglist; int vtblk_req_ready; int vtblk_req_free; int vtblk_dump_queue; int vtblk_bioq; int vtblk_dev; } ;
struct virtio_blk_config {scalar_t__ size_max; } ;
typedef int device_t ;


 int EINVAL ;
 int ENOMEM ;
 int ENOTSUP ;
 int INTR_ENTROPY ;
 int INTR_TYPE_BIO ;
 scalar_t__ MAXPHYS ;
 int M_NOWAIT ;
 int TAILQ_INIT (int *) ;
 int VIRTIO_BLK_F_SIZE_MAX ;
 int VTBLK_LOCK_INIT (struct vtblk_softc*,int ) ;
 scalar_t__ VTBLK_MIN_SEGMENTS ;
 int bioq_init (int *) ;
 int device_get_nameunit (int ) ;
 struct vtblk_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int * sglist_alloc (scalar_t__,int ) ;
 int virtio_set_feature_desc (int ,int ) ;
 int virtio_setup_intr (int ,int) ;
 scalar_t__ virtio_with_feature (int ,int ) ;
 int virtqueue_enable_intr (int ) ;
 int vtblk_alloc_disk (struct vtblk_softc*,struct virtio_blk_config*) ;
 int vtblk_alloc_virtqueue (struct vtblk_softc*) ;
 int vtblk_create_disk (struct vtblk_softc*) ;
 int vtblk_detach (int ) ;
 int vtblk_feature_desc ;
 scalar_t__ vtblk_maximum_segments (struct vtblk_softc*,struct virtio_blk_config*) ;
 int vtblk_read_config (struct vtblk_softc*,struct virtio_blk_config*) ;
 int vtblk_request_prealloc (struct vtblk_softc*) ;
 int vtblk_setup_features (struct vtblk_softc*) ;
 int vtblk_setup_sysctl (struct vtblk_softc*) ;

__attribute__((used)) static int
vtblk_attach(device_t dev)
{
 struct vtblk_softc *sc;
 struct virtio_blk_config blkcfg;
 int error;

 virtio_set_feature_desc(dev, vtblk_feature_desc);

 sc = device_get_softc(dev);
 sc->vtblk_dev = dev;
 VTBLK_LOCK_INIT(sc, device_get_nameunit(dev));
 bioq_init(&sc->vtblk_bioq);
 TAILQ_INIT(&sc->vtblk_dump_queue);
 TAILQ_INIT(&sc->vtblk_req_free);
 TAILQ_INIT(&sc->vtblk_req_ready);

 vtblk_setup_sysctl(sc);
 vtblk_setup_features(sc);

 vtblk_read_config(sc, &blkcfg);







 if (virtio_with_feature(dev, VIRTIO_BLK_F_SIZE_MAX)) {
  if (blkcfg.size_max < MAXPHYS) {
   error = ENOTSUP;
   device_printf(dev, "host requires unsupported "
       "maximum segment size feature\n");
   goto fail;
  }
 }

 sc->vtblk_max_nsegs = vtblk_maximum_segments(sc, &blkcfg);
 if (sc->vtblk_max_nsegs <= VTBLK_MIN_SEGMENTS) {
  error = EINVAL;
  device_printf(dev, "fewer than minimum number of segments "
      "allowed: %d\n", sc->vtblk_max_nsegs);
  goto fail;
 }

 sc->vtblk_sglist = sglist_alloc(sc->vtblk_max_nsegs, M_NOWAIT);
 if (sc->vtblk_sglist == ((void*)0)) {
  error = ENOMEM;
  device_printf(dev, "cannot allocate sglist\n");
  goto fail;
 }

 error = vtblk_alloc_virtqueue(sc);
 if (error) {
  device_printf(dev, "cannot allocate virtqueue\n");
  goto fail;
 }

 error = vtblk_request_prealloc(sc);
 if (error) {
  device_printf(dev, "cannot preallocate requests\n");
  goto fail;
 }

 vtblk_alloc_disk(sc, &blkcfg);

 error = virtio_setup_intr(dev, INTR_TYPE_BIO | INTR_ENTROPY);
 if (error) {
  device_printf(dev, "cannot setup virtqueue interrupt\n");
  goto fail;
 }

 vtblk_create_disk(sc);

 virtqueue_enable_intr(sc->vtblk_vq);

fail:
 if (error)
  vtblk_detach(dev);

 return (error);
}
