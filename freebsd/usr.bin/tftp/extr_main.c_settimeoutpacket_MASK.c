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
 int MAXLINE ; 
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int margc ; 
 char** margv ; 
 int /*<<< orphan*/  maxtimeouts ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  timeoutnetwork ; 

__attribute__((used)) static void
FUNC7(int argc, char *argv[])
{
	int t;
	char	line[MAXLINE];

	if (argc < 2) {
		FUNC5(line, "Packet timeout ");
		FUNC3("(value) ");
		FUNC1(&line[FUNC6(line)], sizeof line - FUNC6(line), stdin);
		FUNC2(line);
		argc = margc;
		argv = margv;
	}
	if (argc != 2) {
		FUNC3("usage: %s value\n", argv[0]);
		return;
	}
	t = FUNC0(argv[1]);
	if (t < 0) {
		FUNC3("%s: bad value\n", argv[1]);
		return;
	}

	FUNC4(t, timeoutnetwork, maxtimeouts);
}