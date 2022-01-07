
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtballoon_softc {int vtballoon_deflate_vq; int vtballoon_inflate_vq; int vtballoon_dev; } ;
struct vq_alloc_info {int dummy; } ;
typedef int device_t ;


 int VQ_ALLOC_INFO_INIT (struct vq_alloc_info*,int ,int ,struct vtballoon_softc*,int *,char*,int ) ;
 int device_get_nameunit (int ) ;
 int virtio_alloc_virtqueues (int ,int ,int,struct vq_alloc_info*) ;
 int vtballoon_vq_intr ;

__attribute__((used)) static int
vtballoon_alloc_virtqueues(struct vtballoon_softc *sc)
{
 device_t dev;
 struct vq_alloc_info vq_info[2];
 int nvqs;

 dev = sc->vtballoon_dev;
 nvqs = 2;

 VQ_ALLOC_INFO_INIT(&vq_info[0], 0, vtballoon_vq_intr, sc,
     &sc->vtballoon_inflate_vq, "%s inflate", device_get_nameunit(dev));

 VQ_ALLOC_INFO_INIT(&vq_info[1], 0, vtballoon_vq_intr, sc,
     &sc->vtballoon_deflate_vq, "%s deflate", device_get_nameunit(dev));

 return (virtio_alloc_virtqueues(dev, 0, nvqs, vq_info));
}
