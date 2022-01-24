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
typedef  int tcflag_t ;
struct url {char* scheme; char* host; int port; char* user; char* pwd; } ;
struct termios {int c_lflag; } ;

/* Variables and functions */
 int ECHO ; 
 int ECHONL ; 
 int ICANON ; 
 int /*<<< orphan*/  STDIN_FILENO ; 
 int TCSAFLUSH ; 
 int TCSANOW ; 
 int TCSASOFT ; 
 int /*<<< orphan*/ * FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct termios*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,struct termios*) ; 

__attribute__((used)) static int
FUNC5(struct url *URL)
{
	struct termios tios;
	tcflag_t saved_flags;
	int i, nopwd;

	FUNC1(stderr, "Authentication required for <%s://%s:%d/>!\n",
	    URL->scheme, URL->host, URL->port);

	FUNC1(stderr, "Login: ");
	if (FUNC0(URL->user, sizeof URL->user, stdin) == NULL)
		return (-1);
	for (i = FUNC2(URL->user); i >= 0; --i)
		if (URL->user[i] == '\r' || URL->user[i] == '\n')
			URL->user[i] = '\0';

	FUNC1(stderr, "Password: ");
	if (FUNC3(STDIN_FILENO, &tios) == 0) {
		saved_flags = tios.c_lflag;
		tios.c_lflag &= ~ECHO;
		tios.c_lflag |= ECHONL|ICANON;
		FUNC4(STDIN_FILENO, TCSAFLUSH|TCSASOFT, &tios);
		nopwd = (FUNC0(URL->pwd, sizeof URL->pwd, stdin) == NULL);
		tios.c_lflag = saved_flags;
		FUNC4(STDIN_FILENO, TCSANOW|TCSASOFT, &tios);
	} else {
		nopwd = (FUNC0(URL->pwd, sizeof URL->pwd, stdin) == NULL);
	}
	if (nopwd)
		return (-1);
	for (i = FUNC2(URL->pwd); i >= 0; --i)
		if (URL->pwd[i] == '\r' || URL->pwd[i] == '\n')
			URL->pwd[i] = '\0';

	return (0);
}