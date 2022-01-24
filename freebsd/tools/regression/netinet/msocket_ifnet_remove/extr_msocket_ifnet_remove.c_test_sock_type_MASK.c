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
 int /*<<< orphan*/  DISC_IFNAME ; 
 int /*<<< orphan*/  DISC_IFUNIT ; 
 int /*<<< orphan*/  DISC_IP ; 
 int /*<<< orphan*/  DISC_MASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int*,int,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 

__attribute__((used)) static int
FUNC6(int type, const char *type_string)
{
	int sock;

	if (FUNC1() < 0)
		return (-1);

	if (FUNC2(DISC_IFNAME, DISC_IFUNIT, DISC_IP, DISC_MASK) < 0) {
		FUNC0();
		return (-1);
	}

	if (FUNC4(&sock, type, type_string) < 0) {
		FUNC0();
		return (-1);
	}

	/*
	 * Tear down the interface first, then close the multicast socket and
	 * see if we make it to the end of the function.
	 */
	FUNC0();
	FUNC3(sock);

	FUNC5("test_sock_type(%s) passed\n", type_string);

	return (0);
}