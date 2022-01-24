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
struct timeval {int dummy; } ;

/* Variables and functions */
 scalar_t__ OK ; 
 int /*<<< orphan*/  SPOOL_DIR ; 
 int /*<<< orphan*/  FUNC0 (struct timeval*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4() {
#ifdef USE_UTIMES
	struct timeval tvs[2];

	(void)gettimeofday(&tvs[0], NULL);
	tvs[1] = tvs[0];
	if (utimes(SPOOL_DIR, tvs) < OK) {
		warn("can't update mtime on spooldir %s", SPOOL_DIR);
		return;
	}
#else
	if (FUNC1(SPOOL_DIR, NULL) < OK) {
		FUNC3("can't update mtime on spooldir %s", SPOOL_DIR);
		return;
	}
#endif /*USE_UTIMES*/
}