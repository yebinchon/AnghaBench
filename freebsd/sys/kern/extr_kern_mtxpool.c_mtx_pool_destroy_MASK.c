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
struct mtx_pool {int mtx_pool_size; int /*<<< orphan*/ * mtx_pool_ary; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_MTXPOOL ; 
 int /*<<< orphan*/  FUNC0 (struct mtx_pool*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void
FUNC2(struct mtx_pool **poolp)
{
	int i;
	struct mtx_pool *pool = *poolp;

	for (i = pool->mtx_pool_size - 1; i >= 0; --i)
		FUNC1(&pool->mtx_pool_ary[i]);
	FUNC0(pool, M_MTXPOOL);
	*poolp = NULL;
}