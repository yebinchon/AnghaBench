
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dmamap; struct TYPE_6__* next; void* baddr; void* vaddr; } ;
typedef TYPE_1__ m_vtob_s ;
struct TYPE_7__ {int dmat; int nump; TYPE_1__** vtob; } ;
typedef TYPE_2__ m_pool_s ;
typedef void* m_addr_t ;
typedef scalar_t__ bus_addr_t ;


 int BUS_DMA_COHERENT ;
 int BUS_DMA_NOWAIT ;
 int BUS_DMA_WAITOK ;
 int MEMO_CLUSTER_SIZE ;
 int VTOB_HASH_CODE (void*) ;
 TYPE_1__* __sym_calloc (int *,int,char*) ;
 int __sym_mfree (int *,TYPE_1__*,int,char*) ;
 int bus_dmamap_load (int ,int ,void*,int ,int ,scalar_t__*,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 scalar_t__ bus_dmamem_alloc (int ,void**,int,int *) ;
 int bus_dmamem_free (int ,void*,int ) ;
 int getbaddrcb ;
 int mp0 ;

__attribute__((used)) static m_addr_t ___dma_getp(m_pool_s *mp)
{
 m_vtob_s *vbp;
 void *vaddr = ((void*)0);
 bus_addr_t baddr = 0;

 vbp = __sym_calloc(&mp0, sizeof(*vbp), "VTOB");
 if (!vbp)
  goto out_err;

 if (bus_dmamem_alloc(mp->dmat, &vaddr,
   BUS_DMA_COHERENT | BUS_DMA_WAITOK, &vbp->dmamap))
  goto out_err;
 bus_dmamap_load(mp->dmat, vbp->dmamap, vaddr,
   MEMO_CLUSTER_SIZE, getbaddrcb, &baddr, BUS_DMA_NOWAIT);
 if (baddr) {
  int hc = VTOB_HASH_CODE(vaddr);
  vbp->vaddr = (m_addr_t) vaddr;
  vbp->baddr = (m_addr_t) baddr;
  vbp->next = mp->vtob[hc];
  mp->vtob[hc] = vbp;
  ++mp->nump;
  return (m_addr_t) vaddr;
 }
out_err:
 if (baddr)
  bus_dmamap_unload(mp->dmat, vbp->dmamap);
 if (vaddr)
  bus_dmamem_free(mp->dmat, vaddr, vbp->dmamap);
 if (vbp)
  __sym_mfree(&mp0, vbp, sizeof(*vbp), "VTOB");
 return 0;
}
