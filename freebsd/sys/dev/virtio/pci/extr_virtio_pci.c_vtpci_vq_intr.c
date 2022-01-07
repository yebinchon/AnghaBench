
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;


 int virtqueue_intr (struct virtqueue*) ;

__attribute__((used)) static void
vtpci_vq_intr(void *xvq)
{
 struct virtqueue *vq;

 vq = xvq;
 virtqueue_intr(vq);
}
