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
typedef  int /*<<< orphan*/  u_char ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  EX_OSERR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int NG_HOOKSIZ ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  csock ; 
 int /*<<< orphan*/  dsock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

__attribute__((used)) static void
FUNC8(fd_set *rfds)
{
	/* Display any incoming control message. */
	if (FUNC1(csock, rfds))
		FUNC2();

	/* Display any incoming data packet. */
	if (FUNC1(dsock, rfds)) {
		char hook[NG_HOOKSIZ];
		u_char *buf;
		int rl;

		/* Read packet from socket. */
		if ((rl = FUNC3(dsock, &buf, hook)) < 0)
			FUNC4(EX_OSERR, "reading hook \"%s\"", hook);
		if (rl == 0)
			FUNC5(EX_OSERR, "EOF from hook \"%s\"?", hook);

		/* Write packet to stdout. */
		FUNC7("Rec'd data packet on hook \"%s\":\n", hook);
		FUNC0(buf, rl);
		FUNC6(buf);
	}
}