
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef size_t uint16_t ;
struct vring_used_elem {void* len; void* id; } ;
struct vring_used {int idx; struct vring_used_elem* ring; } ;
struct vqueue_info {size_t vq_qsize; int vq_last_avail; TYPE_1__* vq_avail; struct vring_used* vq_used; } ;
struct iovec {int iov_len; scalar_t__ iov_base; } ;
struct TYPE_2__ {int * ring; } ;


 size_t be16toh (int ) ;
 int htobe16 (size_t) ;
 void* htobe32 (size_t) ;
 int paddr_unmap (void*,int ) ;

void
vq_relchain(struct vqueue_info *vq, struct iovec *iov, int n, uint32_t iolen)
{
 volatile struct vring_used_elem *vue;
 volatile struct vring_used *vu;
 uint16_t head, uidx, mask;
 int i;

 mask = vq->vq_qsize - 1;
 vu = vq->vq_used;
 head = be16toh(vq->vq_avail->ring[vq->vq_last_avail++ & mask]);

 uidx = be16toh(vu->idx);
 vue = &vu->ring[uidx++ & mask];
 vue->id = htobe32(head);

 vue->len = htobe32(iolen);
 vu->idx = htobe16(uidx);


 for (i = 0; i < n; i++) {
  paddr_unmap((void *)iov[i].iov_base, iov[i].iov_len);
 }
}
