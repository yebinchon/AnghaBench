
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct vtblk_softc {TYPE_1__* vtblk_disk; } ;
struct virtio_blk_config {int capacity; } ;
typedef int device_t ;
struct TYPE_2__ {int d_mediasize; } ;


 struct vtblk_softc* device_get_softc (int ) ;
 int vtblk_read_config (struct vtblk_softc*,struct virtio_blk_config*) ;
 int vtblk_resize_disk (struct vtblk_softc*,int) ;

__attribute__((used)) static int
vtblk_config_change(device_t dev)
{
 struct vtblk_softc *sc;
 struct virtio_blk_config blkcfg;
 uint64_t capacity;

 sc = device_get_softc(dev);

 vtblk_read_config(sc, &blkcfg);


 capacity = blkcfg.capacity * 512;

 if (sc->vtblk_disk->d_mediasize != capacity)
  vtblk_resize_disk(sc, capacity);

 return (0);
}
