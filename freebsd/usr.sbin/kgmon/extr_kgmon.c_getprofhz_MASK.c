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
struct kvmvars {int /*<<< orphan*/  kd; } ;
struct clockinfo {int profhz; } ;
struct TYPE_2__ {int /*<<< orphan*/  n_value; } ;

/* Variables and functions */
 int CTL_KERN ; 
 int KERN_CLOCKRATE ; 
 size_t N_PROFHZ ; 
 scalar_t__ kflag ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 TYPE_1__* nl ; 
 scalar_t__ FUNC2 (int*,int,struct clockinfo*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

int
FUNC5(struct kvmvars *kvp)
{
	size_t size;
	int mib[2], profrate;
	struct clockinfo clockrate;

	if (kflag) {
		profrate = 1;
		if (FUNC1(kvp->kd, nl[N_PROFHZ].n_value, &profrate,
		    sizeof profrate) != sizeof profrate)
			FUNC4("get clockrate: %s", FUNC0(kvp->kd));
		return (profrate);
	}
	mib[0] = CTL_KERN;
	mib[1] = KERN_CLOCKRATE;
	clockrate.profhz = 1;
	size = sizeof clockrate;
	if (FUNC2(mib, 2, &clockrate, &size, NULL, 0) < 0)
		FUNC3("get clockrate");
	return (clockrate.profhz);
}