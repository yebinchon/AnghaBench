
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct vring_used {int dummy; } ;
struct vring_desc {int dummy; } ;
struct vring_avail {int dummy; } ;
struct vqueue_info {int vq_qsize; int vq_pfn; scalar_t__ vq_last_avail; int vq_flags; struct vring_used* vq_used; struct vring_avail* vq_avail; struct vring_desc* vq_desc; } ;
struct beri_vtblk_softc {int beri_mem_offset; struct vqueue_info* vs_queues; } ;


 int NUM_DESCS ;
 int PAGE_SHIFT ;
 int READ4 (struct beri_vtblk_softc*,int ) ;
 int VIRTIO_MMIO_QUEUE_PFN ;
 int VQ_ALLOC ;
 int VRING_ALIGN ;
 int be32toh (int) ;
 int * paddr_map (int ,int,int) ;
 scalar_t__ roundup2 (uintptr_t,int ) ;
 int vring_size (int,int ) ;

__attribute__((used)) static int
vq_init(struct beri_vtblk_softc *sc)
{
 struct vqueue_info *vq;
 uint8_t *base;
 int size;
 int reg;
 int pfn;

 vq = &sc->vs_queues[0];
 vq->vq_qsize = NUM_DESCS;

 reg = READ4(sc, VIRTIO_MMIO_QUEUE_PFN);
 pfn = be32toh(reg);
 vq->vq_pfn = pfn;

 size = vring_size(vq->vq_qsize, VRING_ALIGN);
 base = paddr_map(sc->beri_mem_offset,
  (pfn << PAGE_SHIFT), size);


 vq->vq_desc = (struct vring_desc *)base;
 base += vq->vq_qsize * sizeof(struct vring_desc);


 vq->vq_avail = (struct vring_avail *)base;
 base += (2 + vq->vq_qsize + 1) * sizeof(uint16_t);


 base = (uint8_t *)roundup2((uintptr_t)base, VRING_ALIGN);


 vq->vq_used = (struct vring_used *)base;


 vq->vq_flags = VQ_ALLOC;
 vq->vq_last_avail = 0;

 return (0);
}
