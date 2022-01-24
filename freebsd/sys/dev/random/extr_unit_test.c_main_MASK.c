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
typedef  int /*<<< orphan*/  thrd_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* ra_deinit_alg ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* ra_init_alg ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int NUM_THREADS ; 
 int /*<<< orphan*/  ReadCSPRNG ; 
 int /*<<< orphan*/  RunHarvester ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 TYPE_1__ random_alg_context ; 
 int stopseeding ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*) ; 
 int thrd_success ; 

int
FUNC7(int argc, char *argv[])
{
	thrd_t threads[NUM_THREADS];
	int rc;
	long t;

	random_alg_context.ra_init_alg(NULL);

	for (t = 0; t < NUM_THREADS; t++) {
		FUNC1("In main: creating thread %ld\n", t);
		rc = FUNC4(&threads[t], (t == 0 ? RunHarvester : ReadCSPRNG), NULL);
		if (rc != thrd_success) {
			FUNC1("ERROR; return code from thrd_create() is %d\n", rc);
			FUNC0(-1);
		}
	}

	for (t = 2; t < NUM_THREADS; t++)
		FUNC6(threads[t], &rc);

	stopseeding = 1;

	FUNC6(threads[1], &rc);
	FUNC6(threads[0], &rc);

	random_alg_context.ra_deinit_alg(NULL);

	/* Last thing that main() should do */
	FUNC5(0);

	return (0);
}