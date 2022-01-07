
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vq_desc_extra {scalar_t__ indirect_paddr; int * indirect; } ;
struct virtqueue {int vq_nentries; scalar_t__ vq_indirect_mem_size; int vq_flags; struct vq_desc_extra* vq_descx; } ;


 int M_DEVBUF ;
 int VIRTQUEUE_FLAG_INDIRECT ;
 int free (int *,int ) ;

__attribute__((used)) static void
virtqueue_free_indirect(struct virtqueue *vq)
{
 struct vq_desc_extra *dxp;
 int i;

 for (i = 0; i < vq->vq_nentries; i++) {
  dxp = &vq->vq_descx[i];

  if (dxp->indirect == ((void*)0))
   break;

  free(dxp->indirect, M_DEVBUF);
  dxp->indirect = ((void*)0);
  dxp->indirect_paddr = 0;
 }

 vq->vq_flags &= ~VIRTQUEUE_FLAG_INDIRECT;
 vq->vq_indirect_mem_size = 0;
}
