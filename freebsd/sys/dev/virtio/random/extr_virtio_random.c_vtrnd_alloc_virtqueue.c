
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtrnd_softc {int vtrnd_vq; } ;
struct vq_alloc_info {int dummy; } ;
typedef int device_t ;


 int VQ_ALLOC_INFO_INIT (struct vq_alloc_info*,int ,int *,struct vtrnd_softc*,int *,char*,int ) ;
 int device_get_nameunit (int ) ;
 struct vtrnd_softc* device_get_softc (int ) ;
 int virtio_alloc_virtqueues (int ,int ,int,struct vq_alloc_info*) ;

__attribute__((used)) static int
vtrnd_alloc_virtqueue(device_t dev)
{
 struct vtrnd_softc *sc;
 struct vq_alloc_info vq_info;

 sc = device_get_softc(dev);

 VQ_ALLOC_INFO_INIT(&vq_info, 0, ((void*)0), sc, &sc->vtrnd_vq,
     "%s request", device_get_nameunit(dev));

 return (virtio_alloc_virtqueues(dev, 0, 1, &vq_info));
}
