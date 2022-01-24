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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  flow_cache_print ; 
 int /*<<< orphan*/  flow_cache_print6 ; 
 int /*<<< orphan*/  flow_cache_print6_verbose ; 
 int /*<<< orphan*/  flow_cache_print_verbose ; 
 int human ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC4(int argc, char **argv)
{
	int ipv4, ipv6, verbose = 0;

	ipv4 = FUNC1("inet");
	ipv6 = FUNC1("inet6");

	if (argc > 0 && !FUNC3(argv[0], "ipv4", 4)) {
		ipv6 = 0;
		argc--;
		argv++;
	}
	if (argc > 0 && !FUNC3(argv[0], "ipv6", 4)) {
		ipv4 = 0;
		argc--;
		argv++;
	}

	if (argc > 0 && !FUNC3(argv[0], "verbose", FUNC2(argv[0])))
		verbose = 1;

	if (argc > 0 && !FUNC3(argv[0], "human", FUNC2(argv[0])))
		human = 1;

#ifdef INET
	if (ipv4) {
		if (verbose)
			do_show(4, &flow_cache_print_verbose);
		else
			do_show(4, &flow_cache_print);
	}
#endif

#ifdef INET6
	if (ipv6) {
		if (verbose)
			do_show(6, &flow_cache_print6_verbose);
		else
			do_show(6, &flow_cache_print6);
	}
#endif
}