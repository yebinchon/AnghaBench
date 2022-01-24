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

/* Variables and functions */
 char* DV ; 
 char* NOSTR ; 
 char* __progname ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC4 (char*,char) ; 

char *
FUNC5(char *host)
{
	char *cp;
	static char *next;
	static int lookedup = 0;

	if (!lookedup) {
		if (host == NOSTR && (host = FUNC2("HOST")) == NOSTR) {
			FUNC1(stderr, "%s: no host specified\n", __progname);
			FUNC0(3);
		}
		FUNC3(host);
		next = DV;
		lookedup++;
	}
	/*
	 * We return a new device each time we're called (to allow
	 *   a rotary action to be simulated)
	 */
	if (next == NOSTR)
		return (NOSTR);
	if ((cp = FUNC4(next, ',')) == NULL) {
		DV = next;
		next = NOSTR;
	} else {
		*cp++ = '\0';
		DV = next;
		next = cp;
	}
	return (DV);
}