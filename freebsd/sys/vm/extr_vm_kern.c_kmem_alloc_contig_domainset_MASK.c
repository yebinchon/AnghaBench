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
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  int /*<<< orphan*/  vm_paddr_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  int /*<<< orphan*/  vm_memattr_t ;
typedef  int /*<<< orphan*/  u_long ;
struct vm_domainset_iter {int dummy; } ;
struct domainset {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct vm_domainset_iter*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_domainset_iter*,struct domainset*,int*,int*) ; 

vm_offset_t
FUNC3(struct domainset *ds, vm_size_t size, int flags,
    vm_paddr_t low, vm_paddr_t high, u_long alignment, vm_paddr_t boundary,
    vm_memattr_t memattr)
{
	struct vm_domainset_iter di;
	vm_offset_t addr;
	int domain;

	FUNC2(&di, ds, &domain, &flags);
	do {
		addr = FUNC0(domain, size, flags, low, high,
		    alignment, boundary, memattr);
		if (addr != 0)
			break;
	} while (FUNC1(&di, &domain) == 0);

	return (addr);
}