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
struct TYPE_2__ {double ksw_used; double ksw_total; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 (int*,long*) ; 
 int FUNC2 () ; 
 int nswdev ; 
 int /*<<< orphan*/  FUNC3 (char*,double,double,double,double) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ swtot ; 
 scalar_t__ totalflag ; 

__attribute__((used)) static void
FUNC5(void)
{
	int hlen, pagesize;
	long blocksize;

	pagesize = FUNC2();
	FUNC1(&hlen, &blocksize);
	if (totalflag) {
		blocksize = 1024 * 1024;
		(void)FUNC4("%jdM/%jdM swap space\n",
		    FUNC0(swtot.ksw_used), FUNC0(swtot.ksw_total));
	} else if (nswdev > 1) {
		FUNC3("Total", swtot.ksw_total, swtot.ksw_used,
		    swtot.ksw_total - swtot.ksw_used,
		    (swtot.ksw_used * 100.0) / swtot.ksw_total);
	}
}