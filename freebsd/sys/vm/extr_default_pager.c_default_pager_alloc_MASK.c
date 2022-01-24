#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_prot_t ;
typedef  scalar_t__ vm_ooffset_t ;
typedef  TYPE_1__* vm_object_t ;
struct ucred {int dummy; } ;
struct TYPE_4__ {scalar_t__ charge; struct ucred* cred; } ;

/* Variables and functions */
 int /*<<< orphan*/  OBJT_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ucred*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,struct ucred*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static vm_object_t
FUNC6(void *handle, vm_ooffset_t size, vm_prot_t prot,
    vm_ooffset_t offset, struct ucred *cred)
{
	vm_object_t object;

	if (handle != NULL)
		FUNC2("default_pager_alloc: handle specified");
	if (cred != NULL) {
		if (!FUNC4(size, cred))
			return (NULL);
		FUNC1(cred);
	}
	object = FUNC5(OBJT_DEFAULT,
	    FUNC0(FUNC3(offset + size)));
	if (cred != NULL) {
		object->cred = cred;
		object->charge = size;
	}
	return (object);
}