
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vtmmio_softc {int vtmmio_child_feat_desc; int vtmmio_child_dev; int dev; } ;
typedef int device_t ;


 scalar_t__ bootverbose ;
 scalar_t__ device_is_attached (int ) ;
 int virtio_describe (int ,char const*,int ,int ) ;

__attribute__((used)) static void
vtmmio_describe_features(struct vtmmio_softc *sc, const char *msg,
    uint64_t features)
{
 device_t dev, child;

 dev = sc->dev;
 child = sc->vtmmio_child_dev;

 if (device_is_attached(child) || bootverbose == 0)
  return;

 virtio_describe(dev, msg, features, sc->vtmmio_child_feat_desc);
}
