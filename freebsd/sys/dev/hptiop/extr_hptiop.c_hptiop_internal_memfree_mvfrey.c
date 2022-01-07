
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hpt_iop_hba {scalar_t__ ctlcfg_dmat; int ctlcfg_dmamap; int ctlcfg_ptr; } ;


 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_unload (scalar_t__,int ) ;
 int bus_dmamem_free (scalar_t__,int ,int ) ;

__attribute__((used)) static int hptiop_internal_memfree_mvfrey(struct hpt_iop_hba *hba)
{
 if (hba->ctlcfg_dmat) {
  bus_dmamap_unload(hba->ctlcfg_dmat, hba->ctlcfg_dmamap);
  bus_dmamem_free(hba->ctlcfg_dmat,
     hba->ctlcfg_ptr, hba->ctlcfg_dmamap);
  bus_dma_tag_destroy(hba->ctlcfg_dmat);
 }

 return 0;
}
