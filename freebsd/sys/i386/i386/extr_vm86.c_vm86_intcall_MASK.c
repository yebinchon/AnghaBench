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
struct vm86frame {int vmf_trapno; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ setidt_disp ; 
 scalar_t__ vm86_bioscall ; 
 int /*<<< orphan*/  vm86_lock ; 

int
FUNC4(int intnum, struct vm86frame *vmf)
{
	int (*p)(struct vm86frame *);
	int retval;

	if (intnum < 0 || intnum > 0xff)
		return (EINVAL);

	vmf->vmf_trapno = intnum;
	p = (int (*)(struct vm86frame *))((uintptr_t)vm86_bioscall +
	    setidt_disp);
	FUNC2(&vm86_lock);
	FUNC0();
	retval = p(vmf);
	FUNC1();
	FUNC3(&vm86_lock);
	return (retval);
}