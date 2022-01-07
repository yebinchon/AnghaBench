
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {struct virtqueue* vtscsi_control_vq; } ;
struct vtscsi_request {int * vsr_complete; } ;
struct virtqueue {int dummy; } ;
struct sglist {int dummy; } ;


 int EAGAIN ;
 int EMSGSIZE ;
 int ENOSPC ;
 int MPASS (int) ;
 int VTSCSI_EXECUTE_POLL ;
 int virtqueue_enqueue (struct virtqueue*,struct vtscsi_request*,struct sglist*,int,int) ;
 int virtqueue_notify (struct virtqueue*) ;
 int vtscsi_poll_ctrl_req (struct vtscsi_softc*,struct vtscsi_request*) ;

__attribute__((used)) static int
vtscsi_execute_ctrl_req(struct vtscsi_softc *sc, struct vtscsi_request *req,
    struct sglist *sg, int readable, int writable, int flag)
{
 struct virtqueue *vq;
 int error;

 vq = sc->vtscsi_control_vq;

 MPASS(flag == VTSCSI_EXECUTE_POLL || req->vsr_complete != ((void*)0));

 error = virtqueue_enqueue(vq, req, sg, readable, writable);
 if (error) {




  if (error == ENOSPC || error == EMSGSIZE)
   error = EAGAIN;

  return (error);
 }

 virtqueue_notify(vq);
 if (flag == VTSCSI_EXECUTE_POLL)
  vtscsi_poll_ctrl_req(sc, req);

 return (0);
}
