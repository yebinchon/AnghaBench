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
struct vmtotal {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/ * kd ; 
 int /*<<< orphan*/  FUNC0 (char*,struct vmtotal*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 

__attribute__((used)) static void
FUNC2(struct vmtotal *vmtp)
{
	size_t size;

	if (kd != NULL) {
		/* XXX fill vmtp */
		FUNC1(1, "not implemented");
	} else {
		size = sizeof(*vmtp);
		FUNC0("vm.vmtotal", vmtp, &size);
		if (size != sizeof(*vmtp))
			FUNC1(1, "vm.total size mismatch");
	}
}