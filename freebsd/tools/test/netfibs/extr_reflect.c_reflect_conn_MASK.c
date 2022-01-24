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
typedef  scalar_t__ u_int ;
struct sockaddr {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  socklen_t ;

/* Variables and functions */
 scalar_t__ EHOSTUNREACH ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_NOINPUT ; 
 int /*<<< orphan*/  EX_OSERR ; 
 int /*<<< orphan*/  EX_PROTOCOL ; 
 scalar_t__ accepts ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 scalar_t__ nostart ; 
 scalar_t__ reflectfib ; 
 int FUNC3 (int,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*,size_t,char*,scalar_t__) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 
 char* testcase ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int FUNC8 (int,char*,int) ; 

__attribute__((used)) static int
FUNC9(int s, char *buf, size_t buflen, ssize_t l, struct sockaddr *sa,
    socklen_t salen)
{
	ssize_t m;

	if (l == -1)
		FUNC0(EX_OSERR, "read()");
	if (l == 0)
		FUNC1(EX_NOINPUT, "EOF");
	if ((size_t)l > (buflen - 1))
		FUNC1(EX_DATAERR, "Input too long");
	/* Nuke the \n from echo | netcat. */
	buf[l-1] = '\0';

	/*
	 * Match three cases: (1) START, (2) DONE, (3) anything else.
	 * For anything but START and DONE we just reflect everything.
	 */
	/*
	 * We expected a "START testcase" on first connect.  Otherwise it means
	 * that we are out of sync.  Exit to not produce weird results.
	 */
	if (accepts == 0 && nostart == 0) {
		if (FUNC6(buf, "START ", 6) != 0)
			FUNC1(EX_PROTOCOL, "Not received START on first "
			    "connect: %s", buf);
		if (l < 8)
			FUNC1(EX_PROTOCOL, "START without test case name: %s",
			    buf);
		if (FUNC5(buf+6, testcase) != 0)
			FUNC1(EX_PROTOCOL, "START test case does not match "
			    "'%s': '%s'", testcase, buf+6);
	}
	/* If debug is on, log. */
	if (debug > 0)
		FUNC2(stderr, "<< %s: %s\n", testcase, buf);

	if (reflectfib != (u_int)-1)
		l = FUNC4(buf, buflen, "FIB %u\n", reflectfib);

	/* If debug is on, log. */
	if (debug > 0) {
		buf[l-1] = '\0';
		FUNC2(stderr, ">> %s: %s\n", testcase, buf);
	}

	/* Reflect data with \n again. */
	buf[l-1] = '\n';

	if (sa != NULL) {
		m = FUNC3(s, buf, l, 0, sa, salen);
	} else
		m = FUNC8(s, buf, l);
	/* XXX This is simplified handling. */
	if (m == -1 && sa != NULL && errno == EHOSTUNREACH)
		FUNC7("ignored expected: sendto(%s, %zd)", buf, l);
	else if (m == -1 && (sa == NULL || errno != EHOSTUNREACH))
		FUNC0(EX_OSERR, "write(%s, %zd)", buf, l);
	else if (m != l)
		FUNC0(EX_OSERR, "short write(%s, %zd) %zd", buf, l, m);


	accepts++;
	
	/* See if we got an end signal. */
	if (FUNC6(buf, "DONE", 4) == 0)
		return (-2);
	return (0);
}