
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xdma_channel {int vmem; } ;
struct axidma_softc {int dummy; } ;
struct axidma_channel {int descs_num; int mem_size; int mem_paddr; int mem_vaddr; int descs_phys; int descs; struct xdma_channel* xchan; } ;


 int M_DEVBUF ;
 int free (int ,int ) ;
 int kva_free (int ,int ) ;
 int pmap_kremove_device (int ,int ) ;
 int vmem_free (int ,int ,int ) ;

__attribute__((used)) static int
axidma_desc_free(struct axidma_softc *sc, struct axidma_channel *chan)
{
 struct xdma_channel *xchan;
 int nsegments;

 nsegments = chan->descs_num;
 xchan = chan->xchan;

 free(chan->descs, M_DEVBUF);
 free(chan->descs_phys, M_DEVBUF);

 pmap_kremove_device(chan->mem_vaddr, chan->mem_size);
 kva_free(chan->mem_vaddr, chan->mem_size);
 vmem_free(xchan->vmem, chan->mem_paddr, chan->mem_size);

 return (0);
}
