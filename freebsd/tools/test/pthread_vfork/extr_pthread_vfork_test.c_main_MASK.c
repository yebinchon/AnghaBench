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
struct sigaction {int /*<<< orphan*/  sa_handler; } ;
typedef  int /*<<< orphan*/  sigset_t ;
typedef  int /*<<< orphan*/  reapchildren ;
typedef  int /*<<< orphan*/  pthread_t ;

/* Variables and functions */
 int NUM_THREADS ; 
 int /*<<< orphan*/  SIGCHLD ; 
 int /*<<< orphan*/  SIG_BLOCK ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct sigaction*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct sigaction*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sighandler ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfork_test ; 

int
FUNC9(void)
{
	pthread_t threads[NUM_THREADS];
	struct sigaction reapchildren;
	sigset_t sigchld_mask;
	int rc, t;

	FUNC2(&reapchildren, 0, sizeof(reapchildren));
	reapchildren.sa_handler = sighandler;
	if (FUNC5(SIGCHLD, &reapchildren, NULL) == -1)
		FUNC0(1, "Could not sigaction(SIGCHLD)");

	FUNC7(&sigchld_mask);
	FUNC6(&sigchld_mask, SIGCHLD);
	if (FUNC8(SIG_BLOCK, &sigchld_mask, NULL) == -1)
		FUNC0(1, "sigprocmask");

	for (t = 0; t < NUM_THREADS; t++) {
		rc = FUNC4(&threads[t], NULL, vfork_test, &t);
		if (rc)
			FUNC1(1, rc, "pthread_create");
	}
	FUNC3();
	return (0);
}