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
struct TYPE_2__ {char* o_request; } ;

/* Variables and functions */
 size_t OPT_ROLLOVER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* options ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 void* FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(int argc, char *argv[])
{

	if (argc == 2) {
		if (FUNC2(argv[1], "never") == 0 ||
		    FUNC2(argv[1], "none") == 0) {
			FUNC0(options[OPT_ROLLOVER].o_request);
			options[OPT_ROLLOVER].o_request = NULL;
		}
		if (FUNC2(argv[1], "1") == 0) {
			FUNC0(options[OPT_ROLLOVER].o_request);
			options[OPT_ROLLOVER].o_request = FUNC3("1");
		}
		if (FUNC2(argv[1], "0") == 0) {
			FUNC0(options[OPT_ROLLOVER].o_request);
			options[OPT_ROLLOVER].o_request = FUNC3("0");
		}
	}
	FUNC1("Support for the rollover options is %s.\n",
	    options[OPT_ROLLOVER].o_request != NULL ? "enabled" : "disabled");
	if (options[OPT_ROLLOVER].o_request != NULL)
		FUNC1("Block rollover will be to block %s.\n",
		    options[OPT_ROLLOVER].o_request);


	FUNC1("\nThe following rollover options are available:\n"
	    "\trollover 0	: rollover to block zero (default)\n"
	    "\trollover 1	: rollover to block one\n"
	    "\trollover never	: do not support the rollover option\n"
	    "\trollover none	: do not support the rollover option\n"
	);
}