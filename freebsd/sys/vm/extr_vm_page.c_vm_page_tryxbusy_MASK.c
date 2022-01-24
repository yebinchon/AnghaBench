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
typedef  TYPE_1__* vm_page_t ;
typedef  int /*<<< orphan*/ * vm_object_t ;
struct TYPE_4__ {int /*<<< orphan*/ * object; int /*<<< orphan*/  busy_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  VPB_SINGLE_EXCLUSIVER ; 
 int /*<<< orphan*/  VPB_UNBUSIED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int
FUNC3(vm_page_t m)
{
	vm_object_t obj;

        if (FUNC0(&(m)->busy_lock, VPB_UNBUSIED,
            VPB_SINGLE_EXCLUSIVER) == 0)
		return (0);

	obj = m->object;
	if (obj != NULL && FUNC1(obj)) {
		FUNC2(m);
		return (0);
	}
	return (1);
}