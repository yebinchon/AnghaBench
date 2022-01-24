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
 int options_extra_enabled ; 
 int options_rfc_enabled ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char*,char*) ; 

__attribute__((used)) static void
FUNC2(int argc, char *argv[])
{

	if (argc == 2) {
		if (FUNC1(argv[1], "enable") == 0 ||
		    FUNC1(argv[1], "on") == 0) {
			options_extra_enabled = 1;
			options_rfc_enabled = 1;
		}
		if (FUNC1(argv[1], "disable") == 0 ||
		    FUNC1(argv[1], "off") == 0) {
			options_extra_enabled = 0;
			options_rfc_enabled = 0;
		}
		if (FUNC1(argv[1], "extra") == 0)
			options_extra_enabled = !options_extra_enabled;
	}
	FUNC0("Support for RFC2347 style options are now %s.\n",
	    options_rfc_enabled ? "enabled" : "disabled");
	FUNC0("Support for non-RFC defined options are now %s.\n",
	    options_extra_enabled ? "enabled" : "disabled");

	FUNC0("\nThe following options are available:\n"
	    "\toptions on	: enable support for RFC2347 style options\n"
	    "\toptions off	: disable support for RFC2347 style options\n"
	    "\toptions extra	: toggle support for non-RFC defined options\n"
	);
}