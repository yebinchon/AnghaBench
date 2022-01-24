#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mpt_softc {int /*<<< orphan*/  parent_dmat; } ;
struct mpt_page_memory {int /*<<< orphan*/  paddr; int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  tag; int /*<<< orphan*/  map; } ;
struct mpt_map_info {int error; int /*<<< orphan*/  phys; struct mpt_softc* mpt; } ;

/* Variables and functions */
 int BUS_DMA_COHERENT ; 
 int BUS_DMA_NOWAIT ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR ; 
 int /*<<< orphan*/  BUS_SPACE_MAXADDR_32BIT ; 
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,struct mpt_map_info*,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct mpt_softc*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mpt_map_rquest ; 

__attribute__((used)) static int
FUNC5(struct mpt_softc *mpt, struct mpt_page_memory *page_mem,
    size_t len)
{
	struct mpt_map_info mi;
	int error;

	page_mem->vaddr = NULL;

	/* Limit requests to 16M. */
	if (len > 16 * 1024 * 1024)
		return (ENOSPC);
	error = FUNC4(mpt, mpt->parent_dmat, 1, 0,
	    BUS_SPACE_MAXADDR_32BIT, BUS_SPACE_MAXADDR, NULL, NULL,
	    len, 1, len, 0, &page_mem->tag);
	if (error)
		return (error);
	error = FUNC2(page_mem->tag, &page_mem->vaddr,
	    BUS_DMA_NOWAIT | BUS_DMA_COHERENT, &page_mem->map);
	if (error) {
		FUNC0(page_mem->tag);
		return (error);
	}
	mi.mpt = mpt;
	error = FUNC1(page_mem->tag, page_mem->map, page_mem->vaddr,
	    len, mpt_map_rquest, &mi, BUS_DMA_NOWAIT);
	if (error == 0)
		error = mi.error;
	if (error) {
		FUNC3(page_mem->tag, page_mem->vaddr, page_mem->map);
		FUNC0(page_mem->tag);
		page_mem->vaddr = NULL;
		return (error);
	}
	page_mem->paddr = mi.phys;
	return (0);
}