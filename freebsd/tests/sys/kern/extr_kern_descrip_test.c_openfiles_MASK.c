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
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  O_CREAT ; 
 int PARALLEL ; 
 int /*<<< orphan*/  RENDEZVOUS ; 
 int /*<<< orphan*/  SIGUSR1 ; 
 int /*<<< orphan*/  WNOHANG ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int done ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  handler ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC13(size_t n)
{
	int i, fd;

	FUNC7(SIGUSR1, handler);
	FUNC1((fd = FUNC5(AFILE, O_CREAT, 0644)) != -1);
	FUNC3(fd);
	FUNC1((fd = FUNC5(RENDEZVOUS, O_CREAT, 0644)) != -1);
	FUNC3(fd);
	done = 0;
	for (i = 0; i < PARALLEL; i++)
		if (FUNC4() == 0)
			FUNC6(n / PARALLEL);
	while (done != PARALLEL) {
		FUNC10(1000);
		FUNC2(0, FUNC12(-1, NULL, WNOHANG),
			"a child exited unexpectedly");
	}
	FUNC9(RENDEZVOUS);
	for (i = 0; i < PARALLEL; i++)
		FUNC0(FUNC11(NULL) > 0, "wait: %s", FUNC8(errno));
}