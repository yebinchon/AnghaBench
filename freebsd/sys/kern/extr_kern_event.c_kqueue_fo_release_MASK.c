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
struct TYPE_2__ {scalar_t__ for_refcnt; scalar_t__ for_nolock; } ;

/* Variables and functions */
 scalar_t__ EVFILT_SYSCOUNT ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  filterops_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* sysfilt_ops ; 

__attribute__((used)) static void
FUNC3(int filt)
{

	if (filt > 0 || filt + EVFILT_SYSCOUNT < 0)
		return;

	if (sysfilt_ops[~filt].for_nolock)
		return;

	FUNC1(&filterops_lock);
	FUNC0(sysfilt_ops[~filt].for_refcnt > 0,
	    ("filter object refcount not valid on release"));
	sysfilt_ops[~filt].for_refcnt--;
	FUNC2(&filterops_lock);
}