
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_softc {int vtnet_ifp; int vtnet_tick_ch; int vtnet_dev; } ;
typedef int device_t ;


 int INTR_TYPE_NET ;
 int VTNET_CORE_LOCK_INIT (struct vtnet_softc*) ;
 int VTNET_CORE_MTX (struct vtnet_softc*) ;
 int callout_init_mtx (int *,int ,int ) ;
 struct vtnet_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ether_ifdetach (int ) ;
 int virtio_set_feature_desc (int ,int ) ;
 int virtio_setup_intr (int ,int ) ;
 int vtnet_alloc_rx_filters (struct vtnet_softc*) ;
 int vtnet_alloc_rxtx_queues (struct vtnet_softc*) ;
 int vtnet_alloc_virtqueues (struct vtnet_softc*) ;
 int vtnet_detach (int ) ;
 int vtnet_feature_desc ;
 int vtnet_netmap_attach (struct vtnet_softc*) ;
 int vtnet_setup_features (struct vtnet_softc*) ;
 int vtnet_setup_interface (struct vtnet_softc*) ;
 int vtnet_setup_sysctl (struct vtnet_softc*) ;
 int vtnet_start_taskqueues (struct vtnet_softc*) ;

__attribute__((used)) static int
vtnet_attach(device_t dev)
{
 struct vtnet_softc *sc;
 int error;

 sc = device_get_softc(dev);
 sc->vtnet_dev = dev;


 virtio_set_feature_desc(dev, vtnet_feature_desc);

 VTNET_CORE_LOCK_INIT(sc);
 callout_init_mtx(&sc->vtnet_tick_ch, VTNET_CORE_MTX(sc), 0);

 vtnet_setup_sysctl(sc);
 vtnet_setup_features(sc);

 error = vtnet_alloc_rx_filters(sc);
 if (error) {
  device_printf(dev, "cannot allocate Rx filters\n");
  goto fail;
 }

 error = vtnet_alloc_rxtx_queues(sc);
 if (error) {
  device_printf(dev, "cannot allocate queues\n");
  goto fail;
 }

 error = vtnet_alloc_virtqueues(sc);
 if (error) {
  device_printf(dev, "cannot allocate virtqueues\n");
  goto fail;
 }

 error = vtnet_setup_interface(sc);
 if (error) {
  device_printf(dev, "cannot setup interface\n");
  goto fail;
 }

 error = virtio_setup_intr(dev, INTR_TYPE_NET);
 if (error) {
  device_printf(dev, "cannot setup virtqueue interrupts\n");

  ether_ifdetach(sc->vtnet_ifp);
  goto fail;
 }





 vtnet_start_taskqueues(sc);

fail:
 if (error)
  vtnet_detach(dev);

 return (error);
}
