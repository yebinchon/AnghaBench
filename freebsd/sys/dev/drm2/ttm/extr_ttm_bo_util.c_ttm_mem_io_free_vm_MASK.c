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
struct TYPE_2__ {int io_reserved_vm; } ;
struct ttm_mem_reg {TYPE_1__ bus; } ;
struct ttm_buffer_object {int /*<<< orphan*/  bdev; int /*<<< orphan*/  io_reserve_lru; struct ttm_mem_reg mem; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ttm_mem_reg*) ; 

void FUNC2(struct ttm_buffer_object *bo)
{
	struct ttm_mem_reg *mem = &bo->mem;

	if (mem->bus.io_reserved_vm) {
		mem->bus.io_reserved_vm = false;
		FUNC0(&bo->io_reserve_lru);
		FUNC1(bo->bdev, mem);
	}
}