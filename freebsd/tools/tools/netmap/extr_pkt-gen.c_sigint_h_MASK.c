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
struct TYPE_2__ {int cancel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,void*) ; 
 int global_nthreads ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__* targs ; 

__attribute__((used)) static void
FUNC2(int sig)
{
	int i;

	(void)sig;	/* UNUSED */
	FUNC0("received control-C on thread %p", (void *)FUNC1());
	for (i = 0; i < global_nthreads; i++) {
		targs[i].cancel = 1;
	}
}