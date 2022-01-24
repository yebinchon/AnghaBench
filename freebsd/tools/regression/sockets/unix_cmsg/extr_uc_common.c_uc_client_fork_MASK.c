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
struct TYPE_2__ {int** sync_fd; scalar_t__ client_pid; char* proc_name; int server_flag; } ;

/* Variables and functions */
 size_t SYNC_CLIENT ; 
 size_t SYNC_RECV ; 
 size_t SYNC_SEND ; 
 size_t SYNC_SERVER ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int*) ; 
 TYPE_1__ uc_cfg ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

int
FUNC4(void)
{
	int fd1, fd2;

	if (FUNC2(uc_cfg.sync_fd[SYNC_SERVER]) < 0 ||
	    FUNC2(uc_cfg.sync_fd[SYNC_CLIENT]) < 0) {
		FUNC3("client_fork: pipe");
		return (-1);
	}
	uc_cfg.client_pid = FUNC1();
	if (uc_cfg.client_pid == (pid_t)-1) {
		FUNC3("client_fork: fork");
		return (-1);
	}
	if (uc_cfg.client_pid == 0) {
		uc_cfg.proc_name = "CLIENT";
		uc_cfg.server_flag = false;
		fd1 = uc_cfg.sync_fd[SYNC_SERVER][SYNC_RECV];
		fd2 = uc_cfg.sync_fd[SYNC_CLIENT][SYNC_SEND];
	} else {
		fd1 = uc_cfg.sync_fd[SYNC_SERVER][SYNC_SEND];
		fd2 = uc_cfg.sync_fd[SYNC_CLIENT][SYNC_RECV];
	}
	if (FUNC0(fd1) < 0 || FUNC0(fd2) < 0) {
		FUNC3("client_fork: close");
		return (-1);
	}
	return (uc_cfg.client_pid != 0);
}