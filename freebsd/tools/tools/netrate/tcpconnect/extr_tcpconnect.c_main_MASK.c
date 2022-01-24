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
typedef  int /*<<< orphan*/  uintmax_t ;
typedef  int u_int64_t ;
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
typedef  int /*<<< orphan*/  sin ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  PORT ; 
 int SECONDS ; 
 int /*<<< orphan*/  SIGALRM ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  alarm_handler ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_in*,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  timer_fired ; 
 scalar_t__ FUNC8 (struct sockaddr_in*) ; 

int
FUNC9(int argc, char *argv[])
{
	struct sockaddr_in sin;
	u_int64_t counter;

	if (argc != 2)
		FUNC3(-1, "usage: tcpconnect [ip]");

	FUNC1(&sin, sizeof(sin));
	sin.sin_family = AF_INET;
	sin.sin_len = sizeof(sin);
	sin.sin_addr.s_addr = FUNC5(argv[1]);
	sin.sin_port = FUNC4(PORT);

	if (FUNC7(SIGALRM, alarm_handler) == SIG_ERR)
		FUNC2(-1, "signal(SIGALRM)");

	FUNC0(SECONDS);

	counter = 0;
	while (!timer_fired) {
		if (FUNC8(&sin) == 0)
			counter++;
	}
	FUNC6("%ju count\n", (uintmax_t)counter);
	FUNC6("%ju connections/second\n", (uintmax_t)(counter / SECONDS));

	return (0);
}