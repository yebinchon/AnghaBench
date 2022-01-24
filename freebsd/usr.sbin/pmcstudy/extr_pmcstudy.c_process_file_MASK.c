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
typedef  int /*<<< orphan*/  pid_t ;
struct TYPE_2__ {char* counter_name; int cpu; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int MAX_CPU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* cnts ; 
 int /*<<< orphan*/  command ; 
 int cpu_count_out ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/ * glob_cpu ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int max_to_collect ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int ncnts ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ verbose ; 

__attribute__((used)) static void
FUNC10(char *filename)
{
	FILE *io;
	int i;
	int line_at, not_done;
	pid_t pid_of_command=0;

	if (filename ==  NULL) {
		io = FUNC6(command, "r", &pid_of_command);
	} else {
		io = FUNC3(filename, "r");
		if (io == NULL) {
			FUNC8("Can't process file %s err:%d\n",
			       filename, errno);
			return;
		}
	}
	FUNC0(io);
	if (cnts == NULL) {
		/* Nothing we can do */
		FUNC8("Nothing to do -- no counters built\n");
		if (io) {
			FUNC2(io);
		}
		return;
	}
	FUNC4();
	FUNC7();
	if (verbose) {
		for (i=0; i<ncnts; i++) {
			FUNC8("Counter:%s cpu:%d index:%d\n",
			       cnts[i].counter_name,
			       cnts[i].cpu, i);
		}
	}
	line_at = 0;
	not_done = 1;
	while(not_done) {
		if (FUNC9(io)) {
			line_at++;
		} else {
			break;
		}
		if (line_at >= max_to_collect) {
			not_done = 0;
		}
		if (filename == NULL) {
			int cnt;
			/* For the ones we dynamically open we print now */
			for(i=0, cnt=0; i<MAX_CPU; i++) {
				FUNC1(glob_cpu[i], (line_at-1));
				cnt++;
				if (cnt == cpu_count_out) {
					FUNC8("\n");
					break;
				} else {
					FUNC8("\t");
				}
			}
		}
	}
	if (filename) {
		FUNC2(io);
	} else {
		FUNC5(io, pid_of_command);
	}
}