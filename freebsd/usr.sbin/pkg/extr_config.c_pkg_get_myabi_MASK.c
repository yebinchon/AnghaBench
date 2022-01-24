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
struct utsname {char* sysname; } ;
typedef  int /*<<< orphan*/  machine_arch ;

/* Variables and functions */
 int __FreeBSD_version ; 
 int errno ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,char*,int,char*) ; 
 int FUNC1 (char*,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct utsname*) ; 

__attribute__((used)) static int
FUNC3(char *dest, size_t sz)
{
	struct utsname uts;
	char machine_arch[255];
	size_t len;
	int error;

	error = FUNC2(&uts);
	if (error)
		return (errno);

	len = sizeof(machine_arch);
	error = FUNC1("hw.machine_arch", machine_arch, &len, NULL, 0);
	if (error)
		return (errno);
	machine_arch[len] = '\0';

	/*
	 * Use __FreeBSD_version rather than kernel version (uts.release) for
	 * use in jails. This is equivalent to the value of uname -U.
	 */
	FUNC0(dest, sz, "%s:%d:%s", uts.sysname, __FreeBSD_version/100000,
	    machine_arch);

	return (error);
}