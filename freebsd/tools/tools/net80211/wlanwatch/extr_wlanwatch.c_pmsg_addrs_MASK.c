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
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sockaddr*) ; 
 int /*<<< orphan*/  addrnames ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 char* FUNC4 (struct sockaddr*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC5(char *cp, int addrs)
{
	struct sockaddr *sa;
	int i;

	if (addrs == 0) {
		(void) FUNC3('\n');
		return;
	}
	FUNC2("\nsockaddrs: ");
	FUNC1(stdout, addrs, addrnames);
	FUNC3('\n');
	for (i = 1; i; i <<= 1)
		if (i & addrs) {
			sa = (struct sockaddr *)cp;
			FUNC2(" %s", FUNC4(sa));
			cp += FUNC0(sa);
		}
	FUNC3('\n');
}