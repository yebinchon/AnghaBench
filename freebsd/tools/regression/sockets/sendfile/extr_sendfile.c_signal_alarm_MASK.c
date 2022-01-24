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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ accept_socket ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ listen_socket ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(int signum)
{
	(void)signum;

	FUNC2("# test timeout\n");

	if (accept_socket > 0)
		FUNC1(accept_socket);
	if (listen_socket > 0)
		FUNC1(listen_socket);

	FUNC0(-1);
}