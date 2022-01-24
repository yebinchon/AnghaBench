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
typedef  int vm_size_t ;
typedef  scalar_t__ vm_pindex_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
typedef  scalar_t__ daddr_t ;

/* Variables and functions */
 scalar_t__ SWAPBLK_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__*,scalar_t__*,scalar_t__) ; 

int
FUNC8(vm_object_t object, vm_pindex_t start, vm_size_t size)
{
	daddr_t addr, blk, n_free, s_free;
	int i, j, n;

	FUNC4(&s_free, &n_free);
	FUNC0(object);
	for (i = 0; i < size; i += n) {
		n = size - i;
		blk = FUNC3(&n, 1);
		if (blk == SWAPBLK_NONE) {
			FUNC6(object, start, i);
			FUNC1(object);
			return (-1);
		}
		for (j = 0; j < n; ++j) {
			addr = FUNC5(object,
			    start + i + j, blk + j);
			if (addr != SWAPBLK_NONE)
				FUNC7(&s_free, &n_free,
				    addr);
		}
	}
	FUNC2(s_free, n_free);
	FUNC1(object);
	return (0);
}