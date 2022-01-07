
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int sgt_t ;
struct TYPE_11__ {scalar_t__ sg_chain_dma; int * sg_chain_virt; } ;
typedef TYPE_2__ rcb_t ;
struct TYPE_10__ {int max_outstanding_io; int max_sg_elem; } ;
struct TYPE_12__ {int max_outstanding_io; TYPE_9__* sg_dma_desc; TYPE_2__* rcb; TYPE_1__ pqi_cap; } ;
typedef TYPE_3__ pqisrc_softstate_t ;
typedef scalar_t__ dma_addr_t ;
struct TYPE_13__ {char* tag; int size; scalar_t__ dma_addr; scalar_t__ virt_addr; int align; } ;


 int DBG_ERR (char*,...) ;
 int DBG_FUNC (char*) ;
 int DBG_INIT (char*,int) ;
 int PQISRC_DEFAULT_DMA_ALIGN ;
 int PQI_STATUS_FAILURE ;
 int PQI_STATUS_SUCCESS ;
 int os_dma_mem_alloc (TYPE_3__*,TYPE_9__*) ;
 TYPE_2__* os_mem_alloc (TYPE_3__*,int) ;
 int pqisrc_free_rcb (TYPE_3__*,int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int pqisrc_allocate_rcb(pqisrc_softstate_t *softs)
{
 int ret = PQI_STATUS_SUCCESS;
 int i = 0;
 uint32_t num_req = 0;
 uint32_t sg_buf_size = 0;
 uint64_t alloc_size = 0;
 rcb_t *rcb = ((void*)0);
 rcb_t *prcb = ((void*)0);
 DBG_FUNC("IN\n");






 softs->max_outstanding_io = softs->pqi_cap.max_outstanding_io;
 num_req = softs->max_outstanding_io + 1;
 DBG_INIT("Max Outstanding IO reset to %d\n", num_req);

 alloc_size = num_req * sizeof(rcb_t);


 rcb = os_mem_alloc(softs, alloc_size);
 if (!rcb) {
  DBG_ERR("Failed to allocate memory for rcb\n");
  ret = PQI_STATUS_FAILURE;
  goto err_out;
 }
 softs->rcb = rcb;


 sg_buf_size = softs->pqi_cap.max_sg_elem *
   sizeof(sgt_t);

 prcb = &softs->rcb[1];

 for(i=1; i < num_req; i++) {
  char tag[15];
  sprintf(tag, "sg_dma_buf%d", i);
  softs->sg_dma_desc[i].tag = tag;
  softs->sg_dma_desc[i].size = sg_buf_size;
  softs->sg_dma_desc[i].align = PQISRC_DEFAULT_DMA_ALIGN;

  ret = os_dma_mem_alloc(softs, &softs->sg_dma_desc[i]);
  if (ret) {
   DBG_ERR("Failed to Allocate sg desc %d\n", ret);
   ret = PQI_STATUS_FAILURE;
   goto error;
  }
  prcb->sg_chain_virt = (sgt_t *)(softs->sg_dma_desc[i].virt_addr);
  prcb->sg_chain_dma = (dma_addr_t)(softs->sg_dma_desc[i].dma_addr);
  prcb ++;
 }

 DBG_FUNC("OUT\n");
 return ret;
error:
 pqisrc_free_rcb(softs, i);
err_out:
 DBG_FUNC("failed OUT\n");
 return ret;
}
