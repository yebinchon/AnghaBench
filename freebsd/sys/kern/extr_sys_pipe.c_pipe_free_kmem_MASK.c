#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ vm_offset_t ;
struct TYPE_3__ {scalar_t__ npages; scalar_t__ pos; scalar_t__ cnt; } ;
struct TYPE_4__ {int /*<<< orphan*/ * buffer; scalar_t__ size; } ;
struct pipe {TYPE_1__ pipe_map; TYPE_2__ pipe_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct pipe*) ; 
 int /*<<< orphan*/  amountpipekva ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pipe_map ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC5(struct pipe *cpipe)
{

	FUNC0(!FUNC3(FUNC1(cpipe)),
	    ("pipe_free_kmem: pipe mutex locked"));

	if (cpipe->pipe_buffer.buffer != NULL) {
		FUNC2(&amountpipekva, cpipe->pipe_buffer.size);
		FUNC4(pipe_map,
		    (vm_offset_t)cpipe->pipe_buffer.buffer,
		    (vm_offset_t)cpipe->pipe_buffer.buffer + cpipe->pipe_buffer.size);
		cpipe->pipe_buffer.buffer = NULL;
	}
#ifndef PIPE_NODIRECT
	{
		cpipe->pipe_map.cnt = 0;
		cpipe->pipe_map.pos = 0;
		cpipe->pipe_map.npages = 0;
	}
#endif
}