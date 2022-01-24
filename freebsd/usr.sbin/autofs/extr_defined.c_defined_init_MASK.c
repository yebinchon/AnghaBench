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
struct utsname {char* machine; char* nodename; char* sysname; char* release; char* version; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  defined_values ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (struct utsname*) ; 

void
FUNC4(void)
{
	struct utsname name;
	int error;

	FUNC0(&defined_values);

	error = FUNC3(&name);
	if (error != 0)
		FUNC2(1, "uname");

	FUNC1("ARCH", name.machine);
	FUNC1("CPU", name.machine);
	FUNC1("DOLLAR", "$");
	FUNC1("HOST", name.nodename);
	FUNC1("OSNAME", name.sysname);
	FUNC1("OSREL", name.release);
	FUNC1("OSVERS", name.version);
}