
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_vq; int vtblk_max_nsegs; int vtblk_dev; } ;
struct vq_alloc_info {int dummy; } ;
typedef int device_t ;


 int VQ_ALLOC_INFO_INIT (struct vq_alloc_info*,int ,int ,struct vtblk_softc*,int *,char*,int ) ;
 int device_get_nameunit (int ) ;
 int virtio_alloc_virtqueues (int ,int ,int,struct vq_alloc_info*) ;
 int vtblk_vq_intr ;

__attribute__((used)) static int
vtblk_alloc_virtqueue(struct vtblk_softc *sc)
{
 device_t dev;
 struct vq_alloc_info vq_info;

 dev = sc->vtblk_dev;

 VQ_ALLOC_INFO_INIT(&vq_info, sc->vtblk_max_nsegs,
     vtblk_vq_intr, sc, &sc->vtblk_vq,
     "%s request", device_get_nameunit(dev));

 return (virtio_alloc_virtqueues(dev, 0, 1, &vq_info));
}
