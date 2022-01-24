#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_size_t ;
typedef  scalar_t__ vm_offset_t ;
typedef  TYPE_1__* uma_slab_t ;
struct domainset {int dummy; } ;
struct TYPE_5__ {int us_flags; int /*<<< orphan*/  us_domain; int /*<<< orphan*/  us_size; void* us_data; } ;

/* Variables and functions */
 struct domainset* FUNC0 (int) ; 
 struct domainset* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SKIP_NONE ; 
 int UMA_ANYDOMAIN ; 
 int UMA_SLAB_KERNEL ; 
 int UMA_SLAB_MALLOC ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (struct domainset*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  slabzone ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,TYPE_1__*) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void *
FUNC11(vm_size_t size, int domain, int wait)
{
	struct domainset *policy;
	vm_offset_t addr;
	uma_slab_t slab;

	if (domain != UMA_ANYDOMAIN) {
		/* avoid allocs targeting empty domains */
		if (FUNC3(domain))
			domain = UMA_ANYDOMAIN;
	}
	slab = FUNC9(slabzone, NULL, domain, wait);
	if (slab == NULL)
		return (NULL);
	policy = (domain == UMA_ANYDOMAIN) ? FUNC1() :
	    FUNC0(domain);
	addr = FUNC4(policy, size, wait);
	if (addr != 0) {
		FUNC8(addr, slab);
		slab->us_data = (void *)addr;
		slab->us_flags = UMA_SLAB_KERNEL | UMA_SLAB_MALLOC;
		slab->us_size = size;
		slab->us_domain = FUNC7(FUNC2(
		    FUNC5(addr)));
		FUNC6(size);
	} else {
		FUNC10(slabzone, slab, NULL, SKIP_NONE);
	}

	return ((void *)addr);
}