
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_event_buf_size; struct virtqueue* vtscsi_event_vq; struct sglist* vtscsi_sglist; } ;
struct virtqueue {int dummy; } ;
struct virtio_scsi_event {int dummy; } ;
struct sglist {int sg_nseg; } ;


 int bzero (struct virtio_scsi_event*,int) ;
 int sglist_append (struct sglist*,struct virtio_scsi_event*,int) ;
 int sglist_reset (struct sglist*) ;
 int virtqueue_enqueue (struct virtqueue*,struct virtio_scsi_event*,struct sglist*,int ,int ) ;
 int virtqueue_notify (struct virtqueue*) ;

__attribute__((used)) static int
vtscsi_enqueue_event_buf(struct vtscsi_softc *sc,
    struct virtio_scsi_event *event)
{
 struct sglist *sg;
 struct virtqueue *vq;
 int size, error;

 sg = sc->vtscsi_sglist;
 vq = sc->vtscsi_event_vq;
 size = sc->vtscsi_event_buf_size;

 bzero(event, size);

 sglist_reset(sg);
 error = sglist_append(sg, event, size);
 if (error)
  return (error);

 error = virtqueue_enqueue(vq, event, sg, 0, sg->sg_nseg);
 if (error)
  return (error);

 virtqueue_notify(vq);

 return (0);
}
