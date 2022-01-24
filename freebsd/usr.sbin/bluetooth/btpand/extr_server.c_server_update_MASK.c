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
 int UINT8_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int) ; 
 scalar_t__ server_avail ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int server_fd ; 
 int server_limit ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ service_name ; 

void
FUNC5(int count)
{

	if (server_limit == 0)
		return;

	FUNC0("count %d", count);

	server_avail = UINT8_MAX - (count - 1) * UINT8_MAX / server_limit;
	FUNC1("Service Availability: %d/%d", server_avail, UINT8_MAX);

	if (server_avail == 0 && server_fd != -1)
		FUNC2();

	if (server_avail > 0 && server_fd == -1)
		FUNC3();

	if (service_name)
		FUNC4();
}