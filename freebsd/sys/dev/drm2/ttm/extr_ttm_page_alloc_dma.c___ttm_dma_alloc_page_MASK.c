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
struct dma_pool {int /*<<< orphan*/  gfp_flags; int /*<<< orphan*/  size; int /*<<< orphan*/  dev; } ;
struct dma_page {scalar_t__ vaddr; int /*<<< orphan*/  p; int /*<<< orphan*/  dma; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dma_page*) ; 
 struct dma_page* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static struct dma_page *FUNC4(struct dma_pool *pool)
{
	struct dma_page *d_page;

	d_page = FUNC2(sizeof(struct dma_page), GFP_KERNEL);
	if (!d_page)
		return NULL;

	d_page->vaddr = FUNC0(pool->dev, pool->size,
					   &d_page->dma,
					   pool->gfp_flags);
	if (d_page->vaddr)
		d_page->p = FUNC3(d_page->vaddr);
	else {
		FUNC1(d_page);
		d_page = NULL;
	}
	return d_page;
}