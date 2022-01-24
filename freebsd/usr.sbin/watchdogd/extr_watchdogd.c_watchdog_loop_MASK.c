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
struct timespec {int dummy; } ;
struct stat {int dummy; } ;

/* Variables and functions */
 int WD_ACTIVE ; 
 int end_program ; 
 long nap ; 
 int /*<<< orphan*/  FUNC0 (long) ; 
 int FUNC1 (char*,struct stat*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * test_cmd ; 
 int timeout ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 long FUNC4 (struct timespec*,struct timespec*) ; 
 int FUNC5 (struct timespec*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct timespec ts_start, ts_end;
	struct stat sb;
	long waited;
	int error, failed;

	while (end_program != 2) {
		failed = 0;

		error = FUNC5(&ts_start);
		if (error) {
			end_program = 1;
			goto try_end;
		}

		if (test_cmd != NULL)
			failed = FUNC2(test_cmd);
		else
			failed = FUNC1("/etc", &sb);

		error = FUNC5(&ts_end);
		if (error) {
			end_program = 1;
			goto try_end;
		}

		if (failed == 0)
			FUNC7(timeout|WD_ACTIVE);

		waited = FUNC4(&ts_start, &ts_end);
		if (nap - waited > 0)
			FUNC0(nap - waited);

try_end:
		if (end_program != 0) {
			if (FUNC6(0) == 0) {
				end_program = 2;
			} else {
				FUNC3("Could not stop the watchdog, not exiting");
				end_program = 0;
			}
		}
	}
}