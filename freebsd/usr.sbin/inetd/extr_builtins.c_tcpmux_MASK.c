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
struct servtab {char* se_service; struct servtab* se_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct servtab*) ; 
 scalar_t__ FUNC1 (struct servtab*) ; 
 int /*<<< orphan*/  MAX_SERV_LEN ; 
 scalar_t__ debug ; 
 int FUNC2 (int,char*,int /*<<< orphan*/ ) ; 
 struct servtab* servtab ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,int /*<<< orphan*/ ) ; 

struct servtab *
FUNC8(int s)
{
	struct servtab *sep;
	char service[MAX_SERV_LEN+1];
	int len;

	/* Get requested service name */
	if ((len = FUNC2(s, service, MAX_SERV_LEN)) < 0) {
		FUNC5(s, "-Error reading service name\r\n");
		return (NULL);
	}
	service[len] = '\0';

	if (debug)
		FUNC6("tcpmux: someone wants %s", service);

	/*
	 * Help is a required command, and lists available services,
	 * one per line.
	 */
	if (!FUNC3(service, "help")) {
		for (sep = servtab; sep; sep = sep->se_next) {
			if (!FUNC0(sep))
				continue;
			(void)FUNC7(s,sep->se_service,FUNC4(sep->se_service));
			FUNC5(s, "\r\n");
		}
		return (NULL);
	}

	/* Try matching a service in inetd.conf with the request */
	for (sep = servtab; sep; sep = sep->se_next) {
		if (!FUNC0(sep))
			continue;
		if (!FUNC3(service, sep->se_service)) {
			if (FUNC1(sep)) {
				FUNC5(s, "+Go\r\n");
			}
			return (sep);
		}
	}
	FUNC5(s, "-Service not available\r\n");
	return (NULL);
}