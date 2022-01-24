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
typedef  int /*<<< orphan*/  i ;

/* Variables and functions */
 scalar_t__ ENOPROTOOPT ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_LISTENQLIMIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(void)
{
	int i, ret, sock;

	sock = FUNC4(PF_INET, SOCK_STREAM, 0);
	if (sock < 0)
		FUNC1(-1, "test_set_qlimit: socket(PF_INET, SOCK_STREAM)");

	i = 0;
	ret = FUNC3(sock, SOL_SOCKET, SO_LISTENQLIMIT, &i, sizeof(i));
	if (ret < 0 && errno != ENOPROTOOPT) {
		FUNC5("test_set_qlimit: setsockopt(SOL_SOCKET, "
		    "SO_LISTENQLIMIT, 0): unexpected error");
		FUNC0(sock);
	}

	if (ret == 0) {
		FUNC6("test_set_qlimit: setsockopt(SOL_SOCKET, "
		    "SO_LISTENQLIMIT, 0) succeeded");
		FUNC0(sock);
		FUNC2(-1);
	}
	FUNC0(sock);
}