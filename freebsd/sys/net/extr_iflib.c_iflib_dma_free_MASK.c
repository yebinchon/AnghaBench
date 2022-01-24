#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* iflib_dma_info_t ;
struct TYPE_3__ {scalar_t__ idi_paddr; int /*<<< orphan*/ * idi_tag; int /*<<< orphan*/ * idi_vaddr; int /*<<< orphan*/  idi_map; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 scalar_t__ IF_BAD_DMA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(iflib_dma_info_t dma)
{
	if (dma->idi_tag == NULL)
		return;
	if (dma->idi_paddr != IF_BAD_DMA) {
		FUNC1(dma->idi_tag, dma->idi_map,
		    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
		FUNC2(dma->idi_tag, dma->idi_map);
		dma->idi_paddr = IF_BAD_DMA;
	}
	if (dma->idi_vaddr != NULL) {
		FUNC3(dma->idi_tag, dma->idi_vaddr, dma->idi_map);
		dma->idi_vaddr = NULL;
	}
	FUNC0(dma->idi_tag);
	dma->idi_tag = NULL;
}