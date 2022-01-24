#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_9__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  sgt_t ;
struct TYPE_11__ {scalar_t__ sg_chain_dma; int /*<<< orphan*/ * sg_chain_virt; } ;
typedef  TYPE_2__ rcb_t ;
struct TYPE_10__ {int max_outstanding_io; int max_sg_elem; } ;
struct TYPE_12__ {int max_outstanding_io; TYPE_9__* sg_dma_desc; TYPE_2__* rcb; TYPE_1__ pqi_cap; } ;
typedef  TYPE_3__ pqisrc_softstate_t ;
typedef  scalar_t__ dma_addr_t ;
struct TYPE_13__ {char* tag; int size; scalar_t__ dma_addr; scalar_t__ virt_addr; int /*<<< orphan*/  align; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  PQISRC_DEFAULT_DMA_ALIGN ; 
 int PQI_STATUS_FAILURE ; 
 int PQI_STATUS_SUCCESS ; 
 int FUNC3 (TYPE_3__*,TYPE_9__*) ; 
 TYPE_2__* FUNC4 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static int FUNC7(pqisrc_softstate_t *softs)
{
	int ret = PQI_STATUS_SUCCESS;
	int i = 0;
	uint32_t num_req = 0;
	uint32_t sg_buf_size = 0;
	uint64_t alloc_size = 0;
	rcb_t *rcb = NULL;
	rcb_t *prcb = NULL;
	FUNC1("IN\n");

	/* Set maximum outstanding requests */
	/* The valid tag values are from 1, 2, ..., softs->max_outstanding_io
	 * The rcb will be accessed by using the tag as index
	 * * As 0 tag index is not used, we need to allocate one extra.
	 */
	softs->max_outstanding_io = softs->pqi_cap.max_outstanding_io;
	num_req = softs->max_outstanding_io + 1;
	FUNC2("Max Outstanding IO reset to %d\n", num_req);

	alloc_size = num_req * sizeof(rcb_t);

	/* Allocate Non DMA memory */
	rcb = FUNC4(softs, alloc_size);
	if (!rcb) {
		FUNC0("Failed to allocate memory for rcb\n");
		ret = PQI_STATUS_FAILURE;
		goto err_out;
	}
	softs->rcb = rcb;
	
	/* Allocate sg dma memory for sg chain  */
	sg_buf_size = softs->pqi_cap.max_sg_elem *
			sizeof(sgt_t);

	prcb = &softs->rcb[1];
	/* Initialize rcb */
	for(i=1; i < num_req; i++) {
		char tag[15];
		FUNC6(tag, "sg_dma_buf%d", i);
		softs->sg_dma_desc[i].tag = tag;
		softs->sg_dma_desc[i].size = sg_buf_size;
		softs->sg_dma_desc[i].align = PQISRC_DEFAULT_DMA_ALIGN;

		ret = FUNC3(softs, &softs->sg_dma_desc[i]);
		if (ret) {
			FUNC0("Failed to Allocate sg desc %d\n", ret);
			ret = PQI_STATUS_FAILURE;
			goto error;
		}
		prcb->sg_chain_virt = (sgt_t *)(softs->sg_dma_desc[i].virt_addr);
		prcb->sg_chain_dma = (dma_addr_t)(softs->sg_dma_desc[i].dma_addr);
		prcb ++;
	}

	FUNC1("OUT\n");
	return ret;
error:
	FUNC5(softs, i);
err_out:
	FUNC1("failed OUT\n");
	return ret;
}