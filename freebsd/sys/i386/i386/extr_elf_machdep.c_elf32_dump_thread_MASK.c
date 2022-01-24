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
typedef  int /*<<< orphan*/  uint64_t ;
struct thread {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NT_X86_XSTATE ; 
 int X86_XSTATE_XCR0_OFFSET ; 
 int /*<<< orphan*/  cpu_max_ext_state_size ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/ * FUNC1 (struct thread*) ; 
 int /*<<< orphan*/  FUNC2 (struct thread*) ; 
 scalar_t__ use_xsave ; 
 int /*<<< orphan*/  xsave_mask ; 

void
FUNC3(struct thread *td, void *dst, size_t *off)
{
	void *buf;
	size_t len;

	len = 0;
	if (use_xsave) {
		if (dst != NULL) {
			FUNC2(td);
			len += FUNC0(NT_X86_XSTATE,
			    FUNC1(td), dst,
			    cpu_max_ext_state_size, &buf);
			*(uint64_t *)((char *)buf + X86_XSTATE_XCR0_OFFSET) =
			    xsave_mask;
		} else
			len += FUNC0(NT_X86_XSTATE, NULL, NULL,
			    cpu_max_ext_state_size, NULL);
	}
	*off = len;
}