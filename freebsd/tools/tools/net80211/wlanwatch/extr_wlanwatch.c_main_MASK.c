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
struct rt_msghdr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  PF_ROUTE ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct rt_msghdr*,int) ; 
 int FUNC2 (int,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4(int argc, char *argv[])
{
	int n, s;
	char msg[2048];

	s = FUNC3(PF_ROUTE, SOCK_RAW, 0);
	if (s < 0)
		FUNC0(EX_OSERR, "socket");
	for(;;) {
		n = FUNC2(s, msg, 2048);
		FUNC1((struct rt_msghdr *)msg, n);
	}
	return 0;
}