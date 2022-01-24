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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EXDEV ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  buf_size ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int debug ; 
 scalar_t__ errno ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,...) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

int
FUNC11(const char *from, const char *to)
{
	int	fromfd;
	ssize_t	i;

	/* to stdout? */

	if (FUNC8(to, "-")) {
#ifdef DEBUGGING
		if (debug & 4)
			say("Moving %s to stdout.\n", from);
#endif
		fromfd = FUNC3(from, O_RDONLY);
		if (fromfd < 0)
			FUNC4("internal error, can't reopen %s", from);
		while ((i = FUNC5(fromfd, buf, buf_size)) > 0)
			if (FUNC10(STDOUT_FILENO, buf, i) != i)
				FUNC4("write failed");
		FUNC1(fromfd);
		return 0;
	}
	if (FUNC0(to) < 0) {
		FUNC7("Can't backup %s, output is in %s: %s\n", to, from,
		    FUNC9(errno));
		return -1;
	}
#ifdef DEBUGGING
	if (debug & 4)
		say("Moving %s to %s.\n", from, to);
#endif
	if (FUNC6(from, to) < 0) {
		if (errno != EXDEV || FUNC2(from, to) < 0) {
			FUNC7("Can't create %s, output is in %s: %s\n",
			    to, from, FUNC9(errno));
			return -1;
		}
	}
	return 0;
}