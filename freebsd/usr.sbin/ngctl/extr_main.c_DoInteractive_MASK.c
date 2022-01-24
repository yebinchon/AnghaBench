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
typedef  int /*<<< orphan*/  tv ;
struct timeval {int dummy; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_2__ {int /*<<< orphan*/  (* func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 scalar_t__ CMDRTN_QUIT ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  EX_OSERR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int LINE_MAX ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* PROMPT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  csock ; 
 int /*<<< orphan*/  dsock ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int,int /*<<< orphan*/ ) ; 
 TYPE_1__ help_cmd ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 scalar_t__ FUNC11 (int const,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(void)
{
	const int maxfd = FUNC4(csock, dsock) + 1;

	(*help_cmd.func)(0, NULL);
	while (1) {
		struct timeval tv;
		fd_set rfds;

		/* See if any data or control messages are arriving */
		FUNC3(&rfds);
		FUNC2(csock, &rfds);
		FUNC2(dsock, &rfds);
		FUNC9(&tv, 0, sizeof(tv));
		if (FUNC11(maxfd, &rfds, NULL, NULL, &tv) <= 0) {

			/* Issue prompt and wait for anything to happen */
			FUNC10("%s", PROMPT);
			FUNC7(stdout);
			FUNC3(&rfds);
			FUNC2(0, &rfds);
			FUNC2(csock, &rfds);
			FUNC2(dsock, &rfds);
			if (FUNC11(maxfd, &rfds, NULL, NULL, NULL) < 0)
				FUNC6(EX_OSERR, "select");

			/* If not user input, print a newline first */
			if (!FUNC1(0, &rfds))
				FUNC10("\n");
		}

		FUNC5(&rfds);

		/* Get any user input */
		if (FUNC1(0, &rfds)) {
			char buf[LINE_MAX];

			if (FUNC8(buf, sizeof(buf), stdin) == NULL) {
				FUNC10("\n");
				break;
			}
			if (FUNC0(buf) == CMDRTN_QUIT)
				break;
		}
	}
	return (CMDRTN_QUIT);
}