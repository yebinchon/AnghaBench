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
typedef  int /*<<< orphan*/  vm_memattr_t ;

/* Variables and functions */
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  fakepg_zone ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

vm_page_t
FUNC2(vm_paddr_t paddr, vm_memattr_t memattr)
{
	vm_page_t m;

	m = FUNC0(fakepg_zone, M_WAITOK | M_ZERO);
	FUNC1(m, paddr, memattr);
	return (m);
}