
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct AdapterControlBlock {int parent_dmat; int dm_segs_dmat; int srb_dmat; int srb_dmamap; int * ioctl_dev; } ;


 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_destroy (int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int destroy_dev (int *) ;

__attribute__((used)) static void arcmsr_free_resource(struct AdapterControlBlock *acb)
{

 if(acb->ioctl_dev != ((void*)0)) {
  destroy_dev(acb->ioctl_dev);
 }
 bus_dmamap_unload(acb->srb_dmat, acb->srb_dmamap);
 bus_dmamap_destroy(acb->srb_dmat, acb->srb_dmamap);
 bus_dma_tag_destroy(acb->srb_dmat);
 bus_dma_tag_destroy(acb->dm_segs_dmat);
 bus_dma_tag_destroy(acb->parent_dmat);
}
