
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtnet_rxq {struct virtqueue* vtnrx_vq; } ;
struct virtqueue {int dummy; } ;


 int EMSGSIZE ;
 int ENOSPC ;
 int virtqueue_full (struct virtqueue*) ;
 int virtqueue_notify (struct virtqueue*) ;
 int vtnet_netmap_rxq_populate (struct vtnet_rxq*) ;
 int vtnet_rxq_new_buf (struct vtnet_rxq*) ;

__attribute__((used)) static int
vtnet_rxq_populate(struct vtnet_rxq *rxq)
{
 struct virtqueue *vq;
 int nbufs, error;







 vq = rxq->vtnrx_vq;
 error = ENOSPC;

 for (nbufs = 0; !virtqueue_full(vq); nbufs++) {
  error = vtnet_rxq_new_buf(rxq);
  if (error)
   break;
 }

 if (nbufs > 0) {
  virtqueue_notify(vq);





  if (error == EMSGSIZE)
   error = 0;
 }

 return (error);
}
