#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sun_path; } ;
struct TYPE_4__ {int serv_sock_fd; TYPE_1__ serv_addr_sun; scalar_t__ server_flag; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 TYPE_2__ uc_cfg ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

int
FUNC3(int fd)
{
	int rv;

	rv = 0;
	if (FUNC0(fd) < 0) {
		FUNC1("socket_close: close");
		rv = -1;
	}
	if (uc_cfg.server_flag && fd == uc_cfg.serv_sock_fd)
		if (FUNC2(uc_cfg.serv_addr_sun.sun_path) < 0) {
			FUNC1("socket_close: unlink(%s)",
			    uc_cfg.serv_addr_sun.sun_path);
			rv = -1;
		}
	return (rv);
}