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
struct TYPE_4__ {scalar_t__ func; int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ bpf_jit_filter ;

/* Variables and functions */
 int /*<<< orphan*/  M_BPFJIT ; 
 scalar_t__ bpf_jit_accept_all ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

void
FUNC2(bpf_jit_filter *filter)
{

#ifdef _KERNEL
	if (filter->func != bpf_jit_accept_all)
		free(filter->func, M_BPFJIT);
	free(filter, M_BPFJIT);
#else
	if (filter->func != bpf_jit_accept_all)
		FUNC1(filter->func, filter->size);
	FUNC0(filter);
#endif
}