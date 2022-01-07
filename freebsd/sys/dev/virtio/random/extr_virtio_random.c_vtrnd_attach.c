
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtrnd_softc {int dummy; } ;
typedef int device_t ;


 int EEXIST ;
 int atomic_compare_exchange_strong_explicit (int *,struct vtrnd_softc**,struct vtrnd_softc*,int ,int ) ;
 struct vtrnd_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int g_vtrnd_softc ;
 int memory_order_acquire ;
 int memory_order_release ;
 int random_source_register (int *) ;
 int random_vtrnd ;
 int virtio_set_feature_desc (int ,int ) ;
 int vtrnd_alloc_virtqueue (int ) ;
 int vtrnd_detach (int ) ;
 int vtrnd_feature_desc ;
 int vtrnd_negotiate_features (int ) ;

__attribute__((used)) static int
vtrnd_attach(device_t dev)
{
 struct vtrnd_softc *sc, *exp;
 int error;

 sc = device_get_softc(dev);

 virtio_set_feature_desc(dev, vtrnd_feature_desc);
 vtrnd_negotiate_features(dev);

 error = vtrnd_alloc_virtqueue(dev);
 if (error) {
  device_printf(dev, "cannot allocate virtqueue\n");
  goto fail;
 }

 exp = ((void*)0);
 if (!atomic_compare_exchange_strong_explicit(&g_vtrnd_softc, &exp, sc,
     memory_order_release, memory_order_acquire)) {
  error = EEXIST;
  goto fail;
 }
 random_source_register(&random_vtrnd);

fail:
 if (error)
  vtrnd_detach(dev);

 return (error);
}
