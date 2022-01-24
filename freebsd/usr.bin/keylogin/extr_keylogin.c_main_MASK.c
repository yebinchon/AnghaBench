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
struct key_netstarg {scalar_t__* st_priv_key; int /*<<< orphan*/  st_netname; scalar_t__* st_pub_key; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAXNETNAMELEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct key_netstarg*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int
FUNC7(void)
{
	char fullname[MAXNETNAMELEN + 1];
	struct key_netstarg netst;

	if (!FUNC2(fullname)) {
		FUNC1(stderr, "netname lookup failed -- make sure the ");
		FUNC1(stderr, "system domain name is set.\n");
		FUNC0(1);
	}

	if (! FUNC4(fullname, (char *)&(netst.st_priv_key),
				FUNC3("Password:"))) {
		FUNC1(stderr, "Can't find %s's secret key\n", fullname);
		FUNC0(1);
	}
	if (netst.st_priv_key[0] == 0) {
		FUNC1(stderr, "Password incorrect for %s\n", fullname);
		FUNC0(1);
	}

	netst.st_pub_key[0] = 0;
	netst.st_netname = FUNC6(fullname);

	if (FUNC5(&netst) < 0) {
		FUNC1(stderr, "Could not set %s's secret key\n", fullname);
		FUNC1(stderr, "Maybe the keyserver is down?\n");
		FUNC0(1);
	}
	FUNC0(0);
	/* NOTREACHED */
}