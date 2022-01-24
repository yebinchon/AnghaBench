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
struct mpt_page_memory {int /*<<< orphan*/ * vaddr; int /*<<< orphan*/  tag; int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(struct mpt_page_memory *page_mem)
{

	if (page_mem->vaddr == NULL)
		return;
	FUNC1(page_mem->tag, page_mem->map);
	FUNC2(page_mem->tag, page_mem->vaddr, page_mem->map);
	FUNC0(page_mem->tag);
	page_mem->vaddr = NULL;
}