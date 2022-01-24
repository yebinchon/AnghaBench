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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;

/* Variables and functions */
 int CMDRTN_ERROR ; 
 int CMDRTN_OK ; 
 int CMDRTN_USAGE ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,char*,char*,char*,char*) ; 
 scalar_t__ csock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct timeval*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static int
FUNC12(int ac, char **av)
{
	char *buf;
	char *path, *cmdstr;
	int i, len;

	/* Get arguments */
	if (ac < 3)
		return (CMDRTN_USAGE);
	path = av[1];
	cmdstr = av[2];

	/* Put command and arguments back together as one string */
	for (len = 1, i = 3; i < ac; i++)
		len += FUNC10(av[i]) + 1;
	if ((buf = FUNC6(len)) == NULL) {
		FUNC11("malloc");
		return (CMDRTN_ERROR);
	}
	for (*buf = '\0', i = 3; i < ac; i++) {
		FUNC9(buf + FUNC10(buf),
		    len - FUNC10(buf), " %s", av[i]);
	}

	/* Send it */
	if (FUNC3(csock, path, "%s%s", cmdstr, buf) < 0) {
		FUNC5(buf);
		FUNC11("send msg");
		return (CMDRTN_ERROR);
	}
	FUNC5(buf);

	/* See if a synchronous reply awaits */
	{
		struct timeval tv;
		fd_set rfds;

		FUNC1(&rfds);
		FUNC0(csock, &rfds);
		FUNC7(&tv, 0, sizeof(tv));
		switch (FUNC8(csock + 1, &rfds, NULL, NULL, &tv)) {
		case -1:
			FUNC4(EX_OSERR, "select");
		case 0:
			break;
		default:
			FUNC2();
			break;
		}
	}

	/* Done */
	return (CMDRTN_OK);
}