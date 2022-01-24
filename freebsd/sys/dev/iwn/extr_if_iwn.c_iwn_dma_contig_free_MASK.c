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
struct iwn_dma_info {int /*<<< orphan*/ * tag; int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int BUS_DMASYNC_POSTREAD ; 
 int BUS_DMASYNC_POSTWRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct iwn_dma_info *dma)
{
	if (dma->vaddr != NULL) {
		FUNC1(dma->tag, dma->map,
		    BUS_DMASYNC_POSTREAD | BUS_DMASYNC_POSTWRITE);
		FUNC2(dma->tag, dma->map);
		FUNC3(dma->tag, dma->vaddr, dma->map);
		dma->vaddr = NULL;
	}
	if (dma->tag != NULL) {
		FUNC0(dma->tag);
		dma->tag = NULL;
	}
}