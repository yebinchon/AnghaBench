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
struct filterops {int dummy; } ;
struct TYPE_2__ {scalar_t__ for_refcnt; struct filterops* for_fop; } ;

/* Variables and functions */
 int EEXIST ; 
 int EINVAL ; 
 scalar_t__ EVFILT_SYSCOUNT ; 
 int /*<<< orphan*/  filterops_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct filterops null_filtops ; 
 int /*<<< orphan*/  FUNC2 (char*,int,scalar_t__) ; 
 TYPE_1__* sysfilt_ops ; 

int
FUNC3(int filt, struct filterops *filtops)
{
	int error;

	error = 0;
	if (filt > 0 || filt + EVFILT_SYSCOUNT < 0) {
		FUNC2(
"trying to add a filterop that is out of range: %d is beyond %d\n",
		    ~filt, EVFILT_SYSCOUNT);
		return EINVAL;
	}
	FUNC0(&filterops_lock);
	if (sysfilt_ops[~filt].for_fop != &null_filtops &&
	    sysfilt_ops[~filt].for_fop != NULL)
		error = EEXIST;
	else {
		sysfilt_ops[~filt].for_fop = filtops;
		sysfilt_ops[~filt].for_refcnt = 0;
	}
	FUNC1(&filterops_lock);

	return (error);
}