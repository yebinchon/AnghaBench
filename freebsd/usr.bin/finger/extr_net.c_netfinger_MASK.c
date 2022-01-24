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
struct addrinfo {scalar_t__ ai_next; char* ai_canonname; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; int /*<<< orphan*/  ai_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AI_CANONNAME ; 
 int /*<<< orphan*/  SIGALRM ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TIME_LIMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cleanup ; 
 int FUNC1 (char*,struct addrinfo*) ; 
 int /*<<< orphan*/  family ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,char*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 

void
FUNC10(char *name)
{
	int error, multi;
	char *host;
	struct addrinfo *ai, *ai0;
	static struct addrinfo hint;

	host = FUNC7(name, '@');
	if (host == NULL)
		return;
	*host++ = '\0';
	FUNC6(SIGALRM, cleanup);
	FUNC0(TIME_LIMIT);

	hint.ai_flags = AI_CANONNAME;
	hint.ai_family = family;
	hint.ai_socktype = SOCK_STREAM;

	error = FUNC4(host, "finger", &hint, &ai0);
	if (error) {
		FUNC9("%s: %s", host, FUNC3(error));
		return;
	}

	multi = (ai0->ai_next) != 0;

	/* ai_canonname may not be filled in if the user specified an IP. */
	if (ai0->ai_canonname == 0)
		FUNC5("[%s]\n", host);
	else
		FUNC5("[%s]\n", ai0->ai_canonname);

	for (ai = ai0; ai != NULL; ai = ai->ai_next) {
		if (multi)
			FUNC8(ai);

		error = FUNC1(name, ai);
		if (!error)
			break;
	}
	FUNC0(0);
	FUNC2(ai0);
}