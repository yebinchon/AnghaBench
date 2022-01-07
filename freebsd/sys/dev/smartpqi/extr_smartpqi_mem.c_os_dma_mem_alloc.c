
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dma_mem {scalar_t__ dma_tag; int dma_map; scalar_t__ virt_addr; int size; int dma_addr; int align; } ;
struct TYPE_4__ {int pqi_parent_dmat; } ;
struct TYPE_5__ {TYPE_1__ os_specific; } ;
typedef TYPE_2__ pqisrc_softstate_t ;


 int BUS_DMA_NOWAIT ;
 int BUS_SPACE_MAXADDR ;
 int DBG_ERR (char*,int) ;
 int DBG_FUNC (char*) ;
 int bus_dma_tag_create (int ,int ,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,scalar_t__*) ;
 int bus_dma_tag_destroy (scalar_t__) ;
 int bus_dmamap_load (scalar_t__,int ,scalar_t__,int ,int ,int *,int ) ;
 int bus_dmamem_alloc (scalar_t__,void**,int ,int *) ;
 int bus_dmamem_free (scalar_t__,scalar_t__,int ) ;
 int memset (scalar_t__,int ,int ) ;
 int os_dma_map ;

int os_dma_mem_alloc(pqisrc_softstate_t *softs, struct dma_mem *dma_mem)
{
 int ret = 0;




 if ((ret = bus_dma_tag_create(
  softs->os_specific.pqi_parent_dmat,
  dma_mem->align, 0,
  BUS_SPACE_MAXADDR,
  BUS_SPACE_MAXADDR,
  ((void*)0), ((void*)0),
  dma_mem->size,
  1,
  dma_mem->size,
  0,
  ((void*)0), ((void*)0),
  &dma_mem->dma_tag)) != 0 ) {
         DBG_ERR("can't allocate DMA tag with error = 0x%x\n", ret);
  goto err_out;
 }
 if ((ret = bus_dmamem_alloc(dma_mem->dma_tag, (void **)&dma_mem->virt_addr,
  BUS_DMA_NOWAIT, &dma_mem->dma_map)) != 0) {
  DBG_ERR("can't allocate DMA memory for required object 				with error = 0x%x\n", ret);

  goto err_mem;
 }

 if((ret = bus_dmamap_load(dma_mem->dma_tag, dma_mem->dma_map,
  dma_mem->virt_addr, dma_mem->size,
  os_dma_map, &dma_mem->dma_addr, 0)) != 0) {
  DBG_ERR("can't load DMA memory for required 			object with error = 0x%x\n", ret);

  goto err_load;
 }

 memset(dma_mem->virt_addr, 0, dma_mem->size);


 return ret;

err_load:
 if(dma_mem->virt_addr)
  bus_dmamem_free(dma_mem->dma_tag, dma_mem->virt_addr,
    dma_mem->dma_map);
err_mem:
 if(dma_mem->dma_tag)
  bus_dma_tag_destroy(dma_mem->dma_tag);
err_out:
 DBG_FUNC("failed OUT\n");
 return ret;
}
