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
typedef  scalar_t__ vm_offset_t ;
struct vm_domainset_iter {int dummy; } ;
struct domainset {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (struct vm_domainset_iter*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct vm_domainset_iter*,struct domainset*,int*,int*) ; 

vm_offset_t
FUNC3(struct domainset *ds, vm_size_t size, int flags)
{
	struct vm_domainset_iter di;
	vm_offset_t addr;
	int domain;

	FUNC2(&di, ds, &domain, &flags);
	do {
		addr = FUNC0(domain, size, flags);
		if (addr != 0)
			break;
	} while (FUNC1(&di, &domain) == 0);

	return (addr);
}