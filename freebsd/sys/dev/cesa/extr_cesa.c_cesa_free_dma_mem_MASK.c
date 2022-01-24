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
struct cesa_dma_mem {int /*<<< orphan*/ * cdm_vaddr; int /*<<< orphan*/  cdm_tag; int /*<<< orphan*/  cdm_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct cesa_dma_mem *cdm)
{

	FUNC1(cdm->cdm_tag, cdm->cdm_map);
	FUNC2(cdm->cdm_tag, cdm->cdm_vaddr, cdm->cdm_map);
	FUNC0(cdm->cdm_tag);
	cdm->cdm_vaddr = NULL;
}