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
struct strbuf {int /*<<< orphan*/  buf; } ;
struct addrinfo {int /*<<< orphan*/  ai_addrlen; int /*<<< orphan*/  ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; struct addrinfo* ai_next; } ;
typedef  int /*<<< orphan*/  hints ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int CONNECT_IPV4 ; 
 int CONNECT_IPV6 ; 
 int CONNECT_VERBOSE ; 
 int /*<<< orphan*/  DEFAULT_GIT_PORT ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct addrinfo*) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char**,char const**) ; 
 int FUNC12 (char*,char const*,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC13 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*,char*,char*,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(char *host, int flags)
{
	struct strbuf error_message = STRBUF_INIT;
	int sockfd = -1;
	const char *port = FUNC0(DEFAULT_GIT_PORT);
	struct addrinfo hints, *ai0, *ai;
	int gai;
	int cnt = 0;

	FUNC11(&host, &port);
	if (!*port)
		port = "<none>";

	FUNC13(&hints, 0, sizeof(hints));
	if (flags & CONNECT_IPV4)
		hints.ai_family = AF_INET;
	else if (flags & CONNECT_IPV6)
		hints.ai_family = AF_INET6;
	hints.ai_socktype = SOCK_STREAM;
	hints.ai_protocol = IPPROTO_TCP;

	if (flags & CONNECT_VERBOSE)
		FUNC7(stderr, FUNC1("Looking up %s ... "), host);

	gai = FUNC12(host, port, &hints, &ai);
	if (gai)
		FUNC5(FUNC1("unable to look up %s (port %s) (%s)"), host, port, FUNC10(gai));

	if (flags & CONNECT_VERBOSE)
		/* TRANSLATORS: this is the end of "Looking up %s ... " */
		FUNC7(stderr, FUNC1("done.\nConnecting to %s (port %s) ... "), host, port);

	for (ai0 = ai; ai; ai = ai->ai_next, cnt++) {
		sockfd = FUNC14(ai->ai_family,
				ai->ai_socktype, ai->ai_protocol);
		if ((sockfd < 0) ||
		    (FUNC4(sockfd, ai->ai_addr, ai->ai_addrlen) < 0)) {
			FUNC15(&error_message, "%s[%d: %s]: errno=%s\n",
				    host, cnt, FUNC2(ai), FUNC17(errno));
			if (0 <= sockfd)
				FUNC3(sockfd);
			sockfd = -1;
			continue;
		}
		if (flags & CONNECT_VERBOSE)
			FUNC7(stderr, "%s ", FUNC2(ai));
		break;
	}

	FUNC9(ai0);

	if (sockfd < 0)
		FUNC5(FUNC1("unable to connect to %s:\n%s"), host, error_message.buf);

	FUNC6(sockfd);

	if (flags & CONNECT_VERBOSE)
		/* TRANSLATORS: this is the end of "Connecting to %s (port %s) ... " */
		FUNC8(stderr, FUNC1("done."));

	FUNC16(&error_message);

	return sockfd;
}