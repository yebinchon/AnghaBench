
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_hw {int dummy; } ;
struct i40e_dma_mem {int tag; int map; int va; } ;
typedef int i40e_status ;


 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 int I40E_SUCCESS ;
 int bus_dma_tag_destroy (int ) ;
 int bus_dmamap_sync (int ,int ,int) ;
 int bus_dmamap_unload (int ,int ) ;
 int bus_dmamem_free (int ,int ,int ) ;

i40e_status
i40e_free_dma_mem(struct i40e_hw *hw, struct i40e_dma_mem *mem)
{
 bus_dmamap_sync(mem->tag, mem->map,
     BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
 bus_dmamap_unload(mem->tag, mem->map);
 bus_dmamem_free(mem->tag, mem->va, mem->map);
 bus_dma_tag_destroy(mem->tag);
 return (I40E_SUCCESS);
}
