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
typedef  int ssize_t ;
struct TYPE_2__ {int** sync_fd; scalar_t__ server_flag; } ;

/* Variables and functions */
 size_t SYNC_CLIENT ; 
 size_t SYNC_RECV ; 
 size_t SYNC_SERVER ; 
 int FUNC0 (int,char*,int) ; 
 TYPE_1__ uc_cfg ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

int
FUNC4(void)
{
	ssize_t ssize;
	int fd;
	char buf;

	FUNC1("sync: wait");

	fd = uc_cfg.sync_fd[uc_cfg.server_flag ? SYNC_SERVER : SYNC_CLIENT][SYNC_RECV];

	ssize = FUNC0(fd, &buf, 1);
	if (ssize < 0) {
		FUNC2("sync_recv: read");
		return (-1);
	}
	if (ssize < 1) {
		FUNC3("sync_recv: read %zd of 1 byte", ssize);
		return (-1);
	}

	FUNC1("sync: received");

	return (0);
}