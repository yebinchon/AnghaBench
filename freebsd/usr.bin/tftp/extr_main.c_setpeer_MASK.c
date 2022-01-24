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
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int margc ; 
 char** margv ; 
 char* port ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6(int argc, char *argv[])
{
	char	line[MAXLINE];

	if (argc < 2) {
		FUNC4(line, "Connect ");
		FUNC2("(to) ");
		FUNC0(&line[FUNC5(line)], sizeof line - FUNC5(line), stdin);
		FUNC1(line);
		argc = margc;
		argv = margv;
	}
	if ((argc < 2) || (argc > 3)) {
		FUNC2("usage: %s [host [port]]\n", argv[0]);
		return;
	}
	if (argc == 3) {
		port = argv[2];
		FUNC3(argv[1], argv[2]);
	} else
		FUNC3(argv[1], NULL);
}