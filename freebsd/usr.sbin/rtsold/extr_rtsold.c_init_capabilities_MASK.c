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
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  cap_channel_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * capllflags ; 
 int /*<<< orphan*/ * capscript ; 
 int /*<<< orphan*/ * capsendmsg ; 
 int /*<<< orphan*/ * capsyslog ; 
 int /*<<< orphan*/  fflag ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char const* const*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 char const* const otherconf_script ; 
 char const* const resolvconf_script ; 

__attribute__((used)) static int
FUNC6(void)
{
#ifdef WITH_CASPER
	const char *const scripts[2] = { resolvconf_script, otherconf_script };
	cap_channel_t *capcasper;
	nvlist_t *limits;

	capcasper = cap_init();
	if (capcasper == NULL)
		return (-1);

	capllflags = cap_service_open(capcasper, "rtsold.llflags");
	if (capllflags == NULL)
		return (-1);

	capscript = cap_service_open(capcasper, "rtsold.script");
	if (capscript == NULL)
		return (-1);
	limits = nvlist_create(0);
	nvlist_add_string_array(limits, "scripts", scripts,
	    otherconf_script != NULL ? 2 : 1);
	if (cap_limit_set(capscript, limits) != 0)
		return (-1);

	capsendmsg = cap_service_open(capcasper, "rtsold.sendmsg");
	if (capsendmsg == NULL)
		return (-1);

	if (!fflag) {
		capsyslog = cap_service_open(capcasper, "system.syslog");
		if (capsyslog == NULL)
			return (-1);
	}

	cap_close(capcasper);
#endif /* WITH_CASPER */
	return (0);
}