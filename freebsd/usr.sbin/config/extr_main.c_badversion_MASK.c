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
 int CONFIGVERS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int versreq ; 

__attribute__((used)) static void
FUNC2(void)
{
	FUNC1(stderr, "ERROR: version of config(8) does not match kernel!\n");
	FUNC1(stderr, "config version = %d, ", CONFIGVERS);
	FUNC1(stderr, "version required = %d\n\n", versreq);
	FUNC1(stderr, "Make sure that /usr/src/usr.sbin/config is in sync\n");
	FUNC1(stderr, "with your /usr/src/sys and install a new config binary\n");
	FUNC1(stderr, "before trying this again.\n\n");
	FUNC1(stderr, "If running the new config fails check your config\n");
	FUNC1(stderr, "file against the GENERIC or LINT config files for\n");
	FUNC1(stderr, "changes in config syntax, or option/device naming\n");
	FUNC1(stderr, "conventions\n\n");
	FUNC0(1);
}