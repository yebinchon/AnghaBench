
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_request_vq; int vtscsi_max_nsegs; int vtscsi_event_vq; int vtscsi_control_vq; int vtscsi_dev; } ;
struct vq_alloc_info {int dummy; } ;
typedef int device_t ;


 int VQ_ALLOC_INFO_INIT (struct vq_alloc_info*,int ,int ,struct vtscsi_softc*,int *,char*,int ) ;
 int device_get_nameunit (int ) ;
 int virtio_alloc_virtqueues (int ,int ,int,struct vq_alloc_info*) ;
 int vtscsi_control_vq_intr ;
 int vtscsi_event_vq_intr ;
 int vtscsi_request_vq_intr ;

__attribute__((used)) static int
vtscsi_alloc_virtqueues(struct vtscsi_softc *sc)
{
 device_t dev;
 struct vq_alloc_info vq_info[3];
 int nvqs;

 dev = sc->vtscsi_dev;
 nvqs = 3;

 VQ_ALLOC_INFO_INIT(&vq_info[0], 0, vtscsi_control_vq_intr, sc,
     &sc->vtscsi_control_vq, "%s control", device_get_nameunit(dev));

 VQ_ALLOC_INFO_INIT(&vq_info[1], 0, vtscsi_event_vq_intr, sc,
     &sc->vtscsi_event_vq, "%s event", device_get_nameunit(dev));

 VQ_ALLOC_INFO_INIT(&vq_info[2], sc->vtscsi_max_nsegs,
     vtscsi_request_vq_intr, sc, &sc->vtscsi_request_vq,
     "%s request", device_get_nameunit(dev));

 return (virtio_alloc_virtqueues(dev, 0, nvqs, vq_info));
}
