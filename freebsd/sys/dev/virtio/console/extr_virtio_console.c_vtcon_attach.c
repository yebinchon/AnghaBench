
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc {int vtcon_flags; int vtcon_ctrl_task; int vtcon_ctrl_tx_mtx; int vtcon_mtx; int vtcon_dev; } ;
struct virtio_console_config {int dummy; } ;
typedef int device_t ;


 int INTR_TYPE_TTY ;
 int MTX_DEF ;
 int TASK_INIT (int *,int ,int ,struct vtcon_softc*) ;
 int VIRTIO_CONSOLE_BAD_ID ;
 int VIRTIO_CONSOLE_DEVICE_READY ;
 int VTCON_FLAG_MULTIPORT ;
 int VTCON_FLAG_SIZE ;
 struct vtcon_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,char*,int *,int ) ;
 int virtio_set_feature_desc (int ,int ) ;
 int virtio_setup_intr (int ,int ) ;
 int vtcon_alloc_scports (struct vtcon_softc*) ;
 int vtcon_alloc_virtqueues (struct vtcon_softc*) ;
 int vtcon_ctrl_init (struct vtcon_softc*) ;
 int vtcon_ctrl_send_control (struct vtcon_softc*,int ,int ,int) ;
 int vtcon_ctrl_task_cb ;
 int vtcon_detach (int ) ;
 int vtcon_determine_max_ports (struct vtcon_softc*,struct virtio_console_config*) ;
 int vtcon_enable_interrupts (struct vtcon_softc*) ;
 int vtcon_feature_desc ;
 int vtcon_port_create (struct vtcon_softc*,int ) ;
 int vtcon_port_update_console_size (struct vtcon_softc*) ;
 int vtcon_read_config (struct vtcon_softc*,struct virtio_console_config*) ;
 int vtcon_setup_features (struct vtcon_softc*) ;

__attribute__((used)) static int
vtcon_attach(device_t dev)
{
 struct vtcon_softc *sc;
 struct virtio_console_config concfg;
 int error;

 sc = device_get_softc(dev);
 sc->vtcon_dev = dev;

 mtx_init(&sc->vtcon_mtx, "vtconmtx", ((void*)0), MTX_DEF);
 mtx_init(&sc->vtcon_ctrl_tx_mtx, "vtconctrlmtx", ((void*)0), MTX_DEF);

 virtio_set_feature_desc(dev, vtcon_feature_desc);
 vtcon_setup_features(sc);

 vtcon_read_config(sc, &concfg);
 vtcon_determine_max_ports(sc, &concfg);

 error = vtcon_alloc_scports(sc);
 if (error) {
  device_printf(dev, "cannot allocate softc port structures\n");
  goto fail;
 }

 error = vtcon_alloc_virtqueues(sc);
 if (error) {
  device_printf(dev, "cannot allocate virtqueues\n");
  goto fail;
 }

 if (sc->vtcon_flags & VTCON_FLAG_MULTIPORT) {
  TASK_INIT(&sc->vtcon_ctrl_task, 0, vtcon_ctrl_task_cb, sc);
  error = vtcon_ctrl_init(sc);
  if (error)
   goto fail;
 } else {
  error = vtcon_port_create(sc, 0);
  if (error)
   goto fail;
  if (sc->vtcon_flags & VTCON_FLAG_SIZE)
   vtcon_port_update_console_size(sc);
 }

 error = virtio_setup_intr(dev, INTR_TYPE_TTY);
 if (error) {
  device_printf(dev, "cannot setup virtqueue interrupts\n");
  goto fail;
 }

 vtcon_enable_interrupts(sc);

 vtcon_ctrl_send_control(sc, VIRTIO_CONSOLE_BAD_ID,
     VIRTIO_CONSOLE_DEVICE_READY, 1);

fail:
 if (error)
  vtcon_detach(dev);

 return (error);
}
