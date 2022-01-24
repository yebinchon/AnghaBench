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
typedef  int /*<<< orphan*/ * vm_object_t ;
typedef  int u_int ;
struct vm_domain {int /*<<< orphan*/  vmd_domain; int /*<<< orphan*/  vmd_pageout_deficit; } ;

/* Variables and functions */
 int EAGAIN ; 
 int VM_ALLOC_COUNT_SHIFT ; 
 int VM_ALLOC_WAITFAIL ; 
 int VM_ALLOC_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vm_domain*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct vm_domain *vmd, vm_object_t object, int req)
{

	FUNC4(vmd);

	FUNC2(&vmd->vmd_pageout_deficit,
	    FUNC3((u_int)req >> VM_ALLOC_COUNT_SHIFT, 1));
	if (req & (VM_ALLOC_WAITOK | VM_ALLOC_WAITFAIL)) {
		if (object != NULL) 
			FUNC1(object);
		FUNC5(vmd->vmd_domain);
		if (object != NULL) 
			FUNC0(object);
		if (req & VM_ALLOC_WAITOK)
			return (EAGAIN);
	}

	return (0);
}