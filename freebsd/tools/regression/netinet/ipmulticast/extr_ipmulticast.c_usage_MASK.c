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
 char* DEFAULT_GROUP_STR ; 
 char* DEFAULT_IFADDR_STR ; 
 char* DEFAULT_IFNAME ; 
 int DEFAULT_PORT ; 
 int DEFAULT_TIMEOUT ; 
 int /*<<< orphan*/  EX_USAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ nmcastgroups ; 
 scalar_t__ nmcastsources ; 
 char* progname ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{

	FUNC1(stderr, "\nIP multicast regression test utility\n");
	FUNC1(stderr,
"usage: %s [-4] [-b] [-g groupaddr] [-i ifname] [-I ifaddr] [-m]\n"
"       [-M ngroups] [-p portno] [-r] [-R] [-s] [-S nsources] [-t] [-T timeout]\n"
"       [-v] [blockaddr ...]\n\n", progname);
	FUNC1(stderr, "-4: Use IPv4 API "
	                "(default: Use protocol-independent API)\n");
	FUNC1(stderr, "-b: bind listening socket to ifaddr "
	    "(default: INADDR_ANY)\n");
	FUNC1(stderr, "-g: Base IPv4 multicast group to join (default: %s)\n",
	    DEFAULT_GROUP_STR);
	FUNC1(stderr, "-i: interface for multicast joins (default: %s)\n",
	    DEFAULT_IFNAME);
	FUNC1(stderr, "-I: IPv4 address to join groups on, if using IPv4 "
	    "API\n    (default: %s)\n", DEFAULT_IFADDR_STR);
#ifdef notyet
	fprintf(stderr, "-m: Test misc IPv4 multicast socket options "
	    "(default: off)\n");
#endif
	FUNC1(stderr, "-M: Number of multicast groups to join "
	    "(default: %d)\n", (int)nmcastgroups);
	FUNC1(stderr, "-p: Set local and remote port (default: %d)\n",
	    DEFAULT_PORT);
	FUNC1(stderr, "-r: Set SO_REUSEPORT on (default: off)\n");
	FUNC1(stderr, "-R: Randomize groups/sources (default: off)\n");
	FUNC1(stderr, "-s: Test source-specific API "
	    "(default: test any-source API)\n");
	FUNC1(stderr, "-S: Number of multicast sources to generate if\n"
	    "    none specified on command line (default: %d)\n",
	    (int)nmcastsources);
	FUNC1(stderr, "-t: Test get/setNsourcefilter() (default: off)\n");
	FUNC1(stderr, "-T: Timeout to wait for blocked traffic on first "
	    "group (default: %d)\n", DEFAULT_TIMEOUT);
	FUNC1(stderr, "-v: Be verbose (default: off)\n");
	FUNC1(stderr, "\nRemaining arguments are treated as a list of IPv4 "
	    "sources to filter.\n\n");

	FUNC0(EX_USAGE);
}