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
struct sockaddr {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  sun_path; int /*<<< orphan*/  sun_len; } ;
struct TYPE_4__ {TYPE_1__ serv_addr_sun; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int,struct sockaddr*,int /*<<< orphan*/ ) ; 
 TYPE_2__ uc_cfg ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 

int
FUNC3(int fd)
{
	FUNC1("connect");

	if (FUNC0(fd, (struct sockaddr *)&uc_cfg.serv_addr_sun,
	    uc_cfg.serv_addr_sun.sun_len) < 0) {
		FUNC2("socket_connect: connect(%s)", uc_cfg.serv_addr_sun.sun_path);
		return (-1);
	}
	return (0);
}