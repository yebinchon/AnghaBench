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
typedef  scalar_t__ sbintime_t ;

/* Variables and functions */
 int C_CATCH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  PCATCH ; 
 scalar_t__ SBT_1S ; 
 int /*<<< orphan*/  SBT_1US ; 
 scalar_t__ FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ cold ; 
 size_t curcpu ; 
 int /*<<< orphan*/ * curthread ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ kdb_active ; 
 int /*<<< orphan*/ * pause_wchan ; 
 int /*<<< orphan*/  thread0 ; 
 scalar_t__ tick_sbt ; 

int
FUNC5(const char *wmesg, sbintime_t sbt, sbintime_t pr, int flags)
{
	FUNC1(sbt >= 0, ("pause_sbt: timeout must be >= 0"));

	/* silently convert invalid timeouts */
	if (sbt == 0)
		sbt = tick_sbt;

	if ((cold && curthread == &thread0) || kdb_active ||
	    FUNC2()) {
		/*
		 * We delay one second at a time to avoid overflowing the
		 * system specific DELAY() function(s):
		 */
		while (sbt >= SBT_1S) {
			FUNC0(1000000);
			sbt -= SBT_1S;
		}
		/* Do the delay remainder, if any */
		sbt = FUNC4(sbt, SBT_1US);
		if (sbt > 0)
			FUNC0(sbt);
		return (EWOULDBLOCK);
	}
	return (FUNC3(&pause_wchan[curcpu], NULL,
	    (flags & C_CATCH) ? PCATCH : 0, wmesg, sbt, pr, flags));
}