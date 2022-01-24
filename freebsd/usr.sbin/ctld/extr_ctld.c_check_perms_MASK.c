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
 int S_IROTH ; 
 int S_IWOTH ; 
 int S_IXOTH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*,struct stat*) ; 

__attribute__((used)) static void
FUNC3(const char *path)
{
	struct stat sb;
	int error;

	error = FUNC2(path, &sb);
	if (error != 0) {
		FUNC0("stat");
		return;
	}
	if (sb.st_mode & S_IWOTH) {
		FUNC1("%s is world-writable", path);
	} else if (sb.st_mode & S_IROTH) {
		FUNC1("%s is world-readable", path);
	} else if (sb.st_mode & S_IXOTH) {
		/*
		 * Ok, this one doesn't matter, but still do it,
		 * just for consistency.
		 */
		FUNC1("%s is world-executable", path);
	}

	/*
	 * XXX: Should we also check for owner != 0?
	 */
}