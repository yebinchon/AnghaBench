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
typedef  scalar_t__ pid_t ;
struct TYPE_2__ {int /*<<< orphan*/  client_pid; int /*<<< orphan*/ ** sync_fd; } ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 size_t SYNC_CLIENT ; 
 size_t SYNC_RECV ; 
 size_t SYNC_SEND ; 
 size_t SYNC_SERVER ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ uc_cfg ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

int
FUNC10(void)
{
	int status;
	pid_t pid;

	FUNC6("waiting for client");

	if (FUNC5(uc_cfg.sync_fd[SYNC_SERVER][SYNC_RECV]) < 0 ||
	    FUNC5(uc_cfg.sync_fd[SYNC_CLIENT][SYNC_SEND]) < 0) {
		FUNC7("client_wait: close");
		return (-1);
	}

	pid = FUNC9(uc_cfg.client_pid, &status, 0);
	if (pid == (pid_t)-1) {
		FUNC7("client_wait: waitpid");
		return (-1);
	}

	if (FUNC2(status)) {
		if (FUNC1(status) != EXIT_SUCCESS) {
			FUNC8("client exit status is %d",
			    FUNC1(status));
			return (-FUNC1(status));
		}
	} else {
		if (FUNC3(status))
			FUNC8("abnormal termination of client, signal %d%s",
			    FUNC4(status), FUNC0(status) ?
			    " (core file generated)" : "");
		else
			FUNC8("termination of client, unknown status");
		return (-1);
	}

	return (0);
}