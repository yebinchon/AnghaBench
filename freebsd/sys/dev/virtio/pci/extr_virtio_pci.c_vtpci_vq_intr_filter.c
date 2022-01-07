
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct virtqueue {int dummy; } ;


 int FILTER_SCHEDULE_THREAD ;
 int FILTER_STRAY ;
 int virtqueue_intr_filter (struct virtqueue*) ;

__attribute__((used)) static int
vtpci_vq_intr_filter(void *xvq)
{
 struct virtqueue *vq;
 int rc;

 vq = xvq;
 rc = virtqueue_intr_filter(vq);

 return (rc ? FILTER_SCHEDULE_THREAD : FILTER_STRAY);
}
