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
struct termios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct termios*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (int*,int*,char*,struct termios*,int /*<<< orphan*/ *) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(char **tty, int *amaster, int *aslave)
{
	char		 pty[PATH_MAX];
	struct termios	 tio;

	FUNC0(&tio);

	if (FUNC2(amaster, aslave, pty, &tio, NULL) == -1) {
		FUNC5(LOG_ERR, "Could not openpty(). %s", FUNC4(errno));
		return (-1);
	}

	if ((*tty = FUNC3(pty)) == NULL) {
		FUNC5(LOG_ERR, "Could not strdup(). %s", FUNC4(errno));
		FUNC1(*aslave);
		FUNC1(*amaster);
		return (-1);
	}

	return (0);
}