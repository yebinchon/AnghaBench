#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* ifname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const**,int,char*) ; 
 TYPE_1__ ctx_ ; 
 scalar_t__ FUNC1 (int,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(int signo)
{
	const char *av[8];
	int ac = 0;

	(void)signo;
#ifdef __FreeBSD__
	ARGV_APPEND(av, ac, "ifconfig");
	ARGV_APPEND(av, ac, ctx_.ifname);
	ARGV_APPEND(av, ac, "destroy");
#else
	FUNC0(av, ac, "ip");
	FUNC0(av, ac, "link");
	FUNC0(av, ac, "del");
	FUNC0(av, ac, ctx_.ifname);
#endif
	FUNC0(av, ac, NULL);
	if (FUNC1(ac, av)) {
		FUNC2("Failed to destroy tap interface\n");
	}
}