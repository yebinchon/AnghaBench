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
struct printer {int /*<<< orphan*/  printer; int /*<<< orphan*/  lp; scalar_t__ rw; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  O_RDWR ; 
 int /*<<< orphan*/  O_WRONLY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ pfd ; 
 int /*<<< orphan*/  FUNC4 (struct printer const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct printer const*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(const struct printer *pp)
{
	register int i;

	for (i = 1; ; i = i < 32 ? i << 1 : i) {
		pfd = FUNC3(pp->lp, pp->rw ? O_RDWR : O_WRONLY);
		if (pfd >= 0) {
			FUNC0(500);
			break;
		}
		if (errno == ENOENT) {
			FUNC7(LOG_ERR, "%s: %m", pp->lp);
			FUNC1(1);
		}
		if (i == 1)
			FUNC4(pp, 
				"waiting for %s to become ready (offline?)",
				pp->printer);
		FUNC6(i);
	}
	if (FUNC2(pfd))
		FUNC5(pp);
	FUNC4(pp, "%s is ready and printing", pp->printer);
}