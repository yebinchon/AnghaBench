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
struct printer {scalar_t__ mode_set; int /*<<< orphan*/  printer; int /*<<< orphan*/  baud_rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  TCSAFLUSH ; 
 int /*<<< orphan*/  TIOCEXCL ; 
 int /*<<< orphan*/  FUNC0 (struct termios*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct termios*) ; 
 int /*<<< orphan*/  pfd ; 
 char* FUNC4 (scalar_t__) ; 
 char* FUNC5 (char**,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct termios*) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct termios*) ; 

__attribute__((used)) static void
FUNC9(const struct printer *pp)
{
	struct termios ttybuf;

	if (FUNC2(pfd, TIOCEXCL, (char *)0) < 0) {
		FUNC6(LOG_ERR, "%s: ioctl(TIOCEXCL): %m", pp->printer);
		FUNC1(1);
	}
	if (FUNC7(pfd, &ttybuf) < 0) {
		FUNC6(LOG_ERR, "%s: tcgetattr: %m", pp->printer);
		FUNC1(1);
	}
	if (pp->baud_rate > 0)
		FUNC0(&ttybuf, pp->baud_rate);
	if (pp->mode_set) {
		char *s = FUNC4(pp->mode_set), *tmp;

		while ((tmp = FUNC5(&s, ",")) != NULL) {
			(void) FUNC3(tmp, &ttybuf);
		}
	}
	if (pp->mode_set != 0 || pp->baud_rate > 0) {
		if (FUNC8(pfd, TCSAFLUSH, &ttybuf) == -1) {
			FUNC6(LOG_ERR, "%s: tcsetattr: %m", pp->printer);
		}
	}
}