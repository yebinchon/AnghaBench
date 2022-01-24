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
struct winsize {int ws_col; } ;

/* Variables and functions */
 long INT_MAX ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  TIOCGWINSZ ; 
 scalar_t__ errno ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct winsize*) ; 
 long FUNC2 (char*,char**,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(void)
{
	struct winsize ws;
	long width;
	char *cols, *ep;

	if ((cols = FUNC0("COLUMNS")) != NULL && *cols != '\0') {
		errno = 0;
		width = FUNC2(cols, &ep, 10);
		if (errno || width <= 0 || width > INT_MAX || ep == cols ||
		    *ep != '\0')
			FUNC3("invalid COLUMNS environment variable ignored");
		else
			return (width);
	}
	if (FUNC1(STDOUT_FILENO, TIOCGWINSZ, &ws) != -1)
		return (ws.ws_col);

	return (80);
}