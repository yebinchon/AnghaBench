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

/* Variables and functions */
 int /*<<< orphan*/  AFILE ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  RENDEZVOUS ; 
 int /*<<< orphan*/  R_OK ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(size_t n)
{
	size_t i;
	int r;

	errno = 0;
	for (i = 0; i < n; i++) {
		r = FUNC5(AFILE, O_RDONLY);
		if (r < 0) {
			FUNC2(stderr, "open: %s\n", FUNC6(errno));
			FUNC0(1);
		}
	}
	FUNC4(FUNC3(), SIGUSR1);

	for (;;) {
		if (FUNC1(RENDEZVOUS, R_OK) != 0)
			break;
		FUNC7(1000);
	}
	FUNC0(0);
}