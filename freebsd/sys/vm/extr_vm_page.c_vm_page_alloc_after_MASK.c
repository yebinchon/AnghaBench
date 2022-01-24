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
typedef  int /*<<< orphan*/  vm_pindex_t ;
typedef  int /*<<< orphan*/ * vm_page_t ;
typedef  int /*<<< orphan*/  vm_object_t ;
struct vm_domainset_iter {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vm_domainset_iter*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct vm_domainset_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *) ; 

vm_page_t
FUNC3(vm_object_t object, vm_pindex_t pindex,
    int req, vm_page_t mpred)
{
	struct vm_domainset_iter di;
	vm_page_t m;
	int domain;

	FUNC1(&di, object, pindex, &domain, &req);
	do {
		m = FUNC2(object, pindex, domain, req,
		    mpred);
		if (m != NULL)
			break;
	} while (FUNC0(&di, object, &domain) == 0);

	return (m);
}