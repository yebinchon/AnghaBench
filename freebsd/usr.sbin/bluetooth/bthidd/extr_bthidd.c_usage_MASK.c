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
 char* BTHIDD_IDENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr,
"Usage: %s [options]\n" \
"Where options are:\n" \
"	-a address	specify address to listen on (default ANY)\n" \
"	-c file		specify config file name\n" \
"	-d		run in foreground\n" \
"	-H file		specify known HIDs file name\n" \
"	-h		display this message\n" \
"	-p file		specify PID file name\n" \
"	-t tval		specify client rescan interval (sec)\n" \
"	-u		enable evdev protocol support\n" \
"", BTHIDD_IDENT);
	FUNC0(255);
}