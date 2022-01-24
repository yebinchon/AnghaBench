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
struct lmodule {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/ * devd_fd ; 
 scalar_t__ devd_sock ; 
 int /*<<< orphan*/  devd_socket_callback ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct lmodule*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 

void
FUNC2(struct lmodule *mod)
{

	if (devd_sock > 0) {
		devd_fd = FUNC0(devd_sock, devd_socket_callback, NULL, mod);
		if (devd_fd == NULL)
			FUNC1(LOG_ERR, "fd_select failed on devd socket: %m");
	}
}