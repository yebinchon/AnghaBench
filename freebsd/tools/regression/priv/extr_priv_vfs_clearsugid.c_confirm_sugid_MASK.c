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
struct stat {int st_mode; } ;

/* Variables and functions */
 int S_ISUID ; 
 int /*<<< orphan*/  fpath ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC3(char *test_case, int asroot, int injail)
{
	struct stat sb;

	if (FUNC0(fpath, &sb) < 0) {
		FUNC1("%s stat(%s)", test_case, fpath);
		return;
	}
	if (asroot) {
		if (!(sb.st_mode & S_ISUID))
			FUNC2("%s(root, %s): !SUID", test_case, injail ?
			    "jail" : "!jail");
	} else {
		if (sb.st_mode & S_ISUID)
			FUNC2("%s(!root, %s): SUID", test_case, injail ?
			    "jail" : "!jail");
	}
}