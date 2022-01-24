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
 int ET_EXITING ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int state_flags ; 
 int /*<<< orphan*/  state_mtx ; 

__attribute__((used)) static void
FUNC7(void *arg) {

	FUNC4(&state_mtx);
	while ((state_flags & ET_EXITING) == 0) {
		FUNC3(&state_mtx, &state_mtx, 0, "epoch start wait", 0);
		if (state_flags & ET_EXITING)
			goto out;
		FUNC5(&state_mtx);
		FUNC1(arg);
		FUNC6("W", 500);
		FUNC0(arg);
		FUNC4(&state_mtx);
	}
 out:
	FUNC5(&state_mtx);
	FUNC2();
}