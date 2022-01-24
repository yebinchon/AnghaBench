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
typedef  int uint16_t ;
typedef  size_t grant_ref_t ;
struct TYPE_2__ {int flags; unsigned long frame; } ;

/* Variables and functions */
 int GTF_transfer_committed ; 
 int GTF_transfer_completed ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* shared ; 
 int FUNC3 (int*,int,int /*<<< orphan*/ ) ; 

unsigned long
FUNC4(grant_ref_t ref)
{
	unsigned long frame;
	uint16_t      flags;

	/*
         * If a transfer is not even yet started, try to reclaim the grant
         * reference and return failure (== 0).
         */
	while (!((flags = shared[ref].flags) & GTF_transfer_committed)) {
		if ( FUNC3(&shared[ref].flags, flags, 0) == flags )
			return (0);
		FUNC1();
	}

	/* If a transfer is in progress then wait until it is completed. */
	while (!(flags & GTF_transfer_completed)) {
		flags = shared[ref].flags;
		FUNC1();
	}

	/* Read the frame number /after/ reading completion status. */
	FUNC2();
	frame = shared[ref].frame;
	FUNC0(frame != 0, ("grant table inconsistent"));

	return (frame);
}