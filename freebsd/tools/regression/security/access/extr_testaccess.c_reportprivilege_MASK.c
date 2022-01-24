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
typedef  int uid_t ;
typedef  int gid_t ;

/* Variables and functions */
 int FUNC0 (int*,int*,int*) ; 
 int FUNC1 (int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

int
FUNC4(char *message)
{
	uid_t euid, ruid, suid;
	gid_t egid, rgid, sgid;
	int error;

	error = FUNC1(&ruid, &euid, &suid);
	if (error) {
		FUNC2("getresuid");
		return (error);
	}

	error = FUNC0(&rgid, &egid, &sgid);
	if (error) {
		FUNC2("getresgid");
		return (error);
	}

	if (message)
		FUNC3("%s: ", message);
	FUNC3("ruid: %d, euid: %d, suid: %d,     ", ruid, euid, suid);
	FUNC3("rgid: %d, egid: %d, sgid: %d\n", rgid, egid, sgid);

	return (0);
}