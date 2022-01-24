#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  timeout_t ;
struct callout_handle {struct callout* callout; } ;
struct callout_cpu {int /*<<< orphan*/  cc_callfree; } ;
struct callout {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sle; } ;

/* Variables and functions */
 struct callout_cpu* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct callout_cpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct callout_cpu*) ; 
 struct callout* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__ c_links ; 
 int /*<<< orphan*/  FUNC5 (struct callout*,int,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  timeout_cpu ; 

struct callout_handle
FUNC7(timeout_t *ftn, void *arg, int to_ticks)
{
	struct callout_cpu *cc;
	struct callout *new;
	struct callout_handle handle;

	cc = FUNC0(timeout_cpu);
	FUNC1(cc);
	/* Fill in the next free callout structure. */
	new = FUNC3(&cc->cc_callfree);
	if (new == NULL)
		/* XXX Attempt to malloc first */
		FUNC6("timeout table full");
	FUNC4(&cc->cc_callfree, c_links.sle);
	FUNC5(new, to_ticks, ftn, arg);
	handle.callout = new;
	FUNC2(cc);

	return (handle);
}