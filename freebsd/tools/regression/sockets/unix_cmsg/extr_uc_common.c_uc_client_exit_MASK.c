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
struct TYPE_2__ {int /*<<< orphan*/ ** sync_fd; } ;

/* Variables and functions */
 int EXIT_SUCCESS ; 
 size_t SYNC_CLIENT ; 
 size_t SYNC_RECV ; 
 size_t SYNC_SEND ; 
 size_t SYNC_SERVER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ uc_cfg ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void
FUNC4(int rv)
{
	if (FUNC1(uc_cfg.sync_fd[SYNC_SERVER][SYNC_SEND]) < 0 ||
	    FUNC1(uc_cfg.sync_fd[SYNC_CLIENT][SYNC_RECV]) < 0) {
		FUNC3("client_exit: close");
		rv = -1;
	}
	rv = rv == 0 ? EXIT_SUCCESS : -rv;
	FUNC2("exit: code %d", rv);
	FUNC0(rv);
}