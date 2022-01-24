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
typedef  int /*<<< orphan*/  name ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  GETS_ECHO ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  hz ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static int
FUNC7(char **conf)
{
	char name[80];
	char *mnt;
	int error;

	FUNC6();

	FUNC5("\nLoader variables:\n");
	FUNC2("vfs.root.mountfrom");
	FUNC2("vfs.root.mountfrom.options");

	FUNC5("\nManual root filesystem specification:\n");
	FUNC5("  <fstype>:<device> [options]\n");
	FUNC5("      Mount <device> using filesystem <fstype>\n");
	FUNC5("      and with the specified (optional) option list.\n");
	FUNC5("\n");
	FUNC5("    eg. ufs:/dev/da0s1a\n");
	FUNC5("        zfs:zroot/ROOT/default\n");
	FUNC5("        cd9660:/dev/cd0 ro\n");
	FUNC5("          (which is equivalent to: ");
	FUNC5("mount -t cd9660 -o ro /dev/cd0 /)\n");
	FUNC5("\n");
	FUNC5("  ?               List valid disk boot devices\n");
	FUNC5("  .               Yield 1 second (for background tasks)\n");
	FUNC5("  <empty line>    Abort manual input\n");

	do {
		error = EINVAL;
		FUNC5("\nmountroot> ");
		FUNC0(name, sizeof(name), GETS_ECHO);
		if (name[0] == '\0')
			break;
		if (name[0] == '?' && name[1] == '\0') {
			FUNC5("\nList of GEOM managed disk devices:\n  ");
			FUNC1();
			continue;
		}
		if (name[0] == '.' && name[1] == '\0') {
			FUNC4("rmask", hz);
			continue;
		}
		mnt = name;
		error = FUNC3(&mnt);
		if (error == -1)
			FUNC5("Invalid file system specification.\n");
	} while (error != 0);

	return (error);
}