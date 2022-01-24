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
typedef  int /*<<< orphan*/  vm_page_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  scalar_t__ vm_memattr_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ VM_MEMATTR_UNCACHEABLE ; 
 scalar_t__ VM_MEMATTR_WRITE_BACK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC3(vm_paddr_t pa, vm_page_t m)
{
	vm_memattr_t ma;

	ma = FUNC2(m);
	if (ma == VM_MEMATTR_WRITE_BACK && !FUNC1(pa))
		ma = VM_MEMATTR_UNCACHEABLE;
	return FUNC0(ma);
}