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
struct idr {int dummy; } ;
struct ib_uobject {int /*<<< orphan*/  ref; struct ib_ucontext* context; } ;
struct ib_ucontext {int dummy; } ;

/* Variables and functions */
 struct ib_uobject* FUNC0 (struct idr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static struct ib_uobject *FUNC4(struct idr *idr, int id,
					 struct ib_ucontext *context)
{
	struct ib_uobject *uobj;

	FUNC2();
	uobj = FUNC0(idr, id);
	if (uobj) {
		if (uobj->context == context)
			FUNC1(&uobj->ref);
		else
			uobj = NULL;
	}
	FUNC3();

	return uobj;
}