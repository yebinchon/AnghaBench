#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tool_mw {size_t phys_size; scalar_t__ dma_map; scalar_t__ dma_tag; scalar_t__ dma_base; scalar_t__ virt_addr; void* size; int /*<<< orphan*/  addr_limit; int /*<<< orphan*/  xlat_align; int /*<<< orphan*/  xlat_align_size; } ;
struct tool_ctx {int /*<<< orphan*/  dev; TYPE_1__* peers; } ;
struct ntb_tool_load_cb_args {scalar_t__ addr; scalar_t__ error; } ;
struct TYPE_2__ {struct tool_mw* inmws; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMA_NOWAIT ; 
 int BUS_DMA_WAITOK ; 
 int BUS_DMA_ZERO ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__,scalar_t__,void*,int /*<<< orphan*/ ,struct ntb_tool_load_cb_args*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,void**,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,size_t,size_t,...) ; 
 int FUNC8 (int /*<<< orphan*/ ,unsigned int,scalar_t__,void*) ; 
 int /*<<< orphan*/  ntb_tool_load_cb ; 
 void* FUNC9 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct tool_ctx *tc, unsigned int pidx, unsigned int widx,
    size_t req_size)
{
	struct tool_mw *inmw = &tc->peers[pidx].inmws[widx];
	struct ntb_tool_load_cb_args cba;
	int rc;

	if (req_size == 0)
		inmw->size = FUNC9(inmw->phys_size, inmw->xlat_align_size);
	else
		inmw->size = FUNC9(req_size, inmw->xlat_align_size);

	FUNC7(tc->dev, "mw_size %zi req_size %zi buff %zi\n",
	    inmw->phys_size, req_size, inmw->size);

	if (FUNC0(FUNC6(tc->dev), inmw->xlat_align, 0,
	    inmw->addr_limit, BUS_SPACE_MAXADDR, NULL, NULL, inmw->size, 1,
	    inmw->size, 0, NULL, NULL, &inmw->dma_tag)) {
		FUNC7(tc->dev, "Unable to create MW tag of size "
		    "%zu/%zu\n", inmw->phys_size, inmw->size);
		rc = ENOMEM;
		goto err_free_dma_var;
	}

	if (FUNC4(inmw->dma_tag, (void **)&inmw->virt_addr,
	    BUS_DMA_WAITOK | BUS_DMA_ZERO, &inmw->dma_map)) {
		FUNC7(tc->dev, "Unable to allocate MW buffer of size "
		    "%zu/%zu\n", inmw->phys_size, inmw->size);
		rc = ENOMEM;
		goto err_free_tag_rem;
	}

	if (FUNC2(inmw->dma_tag, inmw->dma_map, inmw->virt_addr,
	    inmw->size, ntb_tool_load_cb, &cba, BUS_DMA_NOWAIT) || cba.error) {
		FUNC7(tc->dev, "Unable to load MW buffer of size "
		    "%zu/%zu\n", inmw->phys_size, inmw->size);
		rc = ENOMEM;
		goto err_free_dma;
	}
	inmw->dma_base = cba.addr;

	rc = FUNC8(tc->dev, widx, inmw->dma_base, inmw->size);
	if (rc)
		goto err_free_mw;

	return (0);

err_free_mw:
	FUNC3(inmw->dma_tag, inmw->dma_map);

err_free_dma:
	FUNC5(inmw->dma_tag, inmw->virt_addr, inmw->dma_map);

err_free_tag_rem:
	FUNC1(inmw->dma_tag);

err_free_dma_var:
	inmw->size = 0;
	inmw->virt_addr = 0;
	inmw->dma_base = 0;
	inmw->dma_tag = 0;
	inmw->dma_map = 0;

	return (rc);
}