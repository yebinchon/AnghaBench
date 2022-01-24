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
struct dma_pool {int /*<<< orphan*/  nfrees; int /*<<< orphan*/  npages_free; } ;

/* Variables and functions */

__attribute__((used)) static void FUNC0(struct dma_pool *pool,
					unsigned freed_pages)
{
	pool->npages_free -= freed_pages;
	pool->nfrees += freed_pages;

}