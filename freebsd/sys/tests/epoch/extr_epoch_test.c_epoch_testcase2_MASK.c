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
struct mtx {int dummy; } ;
struct epoch_tracker {int dummy; } ;
struct epoch_test_instance {int threadid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct epoch_tracker*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct epoch_tracker*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int iterations ; 
 int /*<<< orphan*/  FUNC4 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC5 (struct mtx*) ; 
 struct mtx mutexA ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int,int) ; 
 int /*<<< orphan*/  test_epoch ; 
 int ticks ; 

__attribute__((used)) static void
FUNC7(struct epoch_test_instance *eti)
{
	int i, startticks;
	struct mtx *mtxp;
	struct epoch_tracker et;

	startticks = ticks;
	i = 0;
	mtxp = &mutexA;

	while (i < iterations) {
		FUNC1(test_epoch, &et);
		FUNC4(mtxp);
		FUNC0(1);
		i++;
		FUNC5(mtxp);
		FUNC2(test_epoch, &et);
		FUNC3(test_epoch);
	}
	FUNC6("test2: thread: %d took %d ticks to complete %d iterations\n",
		   eti->threadid, ticks - startticks, iterations);
}