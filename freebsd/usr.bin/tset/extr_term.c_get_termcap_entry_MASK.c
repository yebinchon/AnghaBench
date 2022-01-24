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
struct ttyent {char* ty_type; } ;

/* Variables and functions */
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  STDERR_FILENO ; 
 char* FUNC0 (char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 void* FUNC2 (char*) ; 
 struct ttyent* FUNC3 (char*) ; 
 char* FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 char* FUNC6 (char*,char) ; 
 char* tbuf ; 
 int FUNC7 (char*,char const*) ; 
 char* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 

const char *
FUNC11(char *userarg, char **tcapbufp)
{
	struct ttyent *t;
	int rval;
	char *p, *ttypath;
	const char *ttype;

	if (userarg) {
		ttype = userarg;
		goto found;
	}

	/* Try the environment. */
	if ((ttype = FUNC2("TERM")))
		goto map;

	/* Try ttyname(3); check for dialup or other mapping. */
	if ((ttypath = FUNC8(STDERR_FILENO))) {
		if ((p = FUNC6(ttypath, '/')))
			++p;
		else
			p = ttypath;
		if ((t = FUNC3(p))) {
			ttype = t->ty_type;
			goto map;
		}
	}

	/* If still undefined, use "unknown". */
	ttype = "unknown";

map:	ttype = FUNC4(ttype);

	/*
	 * If not a path, remove TERMCAP from the environment so we get a
	 * real entry from /etc/termcap.  This prevents us from being fooled
	 * by out of date stuff in the environment.
	 */
found:	if ((p = FUNC2("TERMCAP")) != NULL && *p != '/')
		FUNC9("TERMCAP");

	/*
	 * ttype now contains a pointer to the type of the terminal.
	 * If the first character is '?', ask the user.
	 */
	if (ttype[0] == '?') {
		if (ttype[1] != '\0')
			ttype = FUNC0(ttype + 1);
		else
			ttype = FUNC0(NULL);
	}

	/* Find the termcap entry.  If it doesn't exist, ask the user. */
	while ((rval = FUNC7(tbuf, ttype)) == 0) {
		FUNC10("terminal type %s is unknown", ttype);
		ttype = FUNC0(NULL);
	}
	if (rval == -1)
		FUNC1(1, "termcap: %s", FUNC5(errno ? errno : ENOENT));
	*tcapbufp = tbuf;
	return (ttype);
}