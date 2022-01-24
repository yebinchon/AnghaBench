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
typedef  scalar_t__ vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
struct tte {int dummy; } ;
typedef  scalar_t__ pmap_t ;

/* Variables and functions */
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ PMAP_TSB_THRESH ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,struct tte*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int /*<<< orphan*/  (*) (scalar_t__,scalar_t__,struct tte*,scalar_t__)) ; 
 struct tte* FUNC8 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  tte_list_global_lock ; 

void
FUNC9(pmap_t dst_pmap, pmap_t src_pmap, vm_offset_t dst_addr,
    vm_size_t len, vm_offset_t src_addr)
{
	struct tte *tp;
	vm_offset_t va;

	if (dst_addr != src_addr)
		return;
	FUNC3(&tte_list_global_lock);
	if (dst_pmap < src_pmap) {
		FUNC0(dst_pmap);
		FUNC0(src_pmap);
	} else {
		FUNC0(src_pmap);
		FUNC0(dst_pmap);
	}
	if (len > PMAP_TSB_THRESH) {
		FUNC7(src_pmap, dst_pmap, src_addr, src_addr + len,
		    pmap_copy_tte);
		FUNC5(dst_pmap);
	} else {
		for (va = src_addr; va < src_addr + len; va += PAGE_SIZE)
			if ((tp = FUNC8(src_pmap, va)) != NULL)
				FUNC2(src_pmap, dst_pmap, tp, va);
		FUNC6(dst_pmap, src_addr, src_addr + len - 1);
	}
	FUNC4(&tte_list_global_lock);
	FUNC1(src_pmap);
	FUNC1(dst_pmap);
}