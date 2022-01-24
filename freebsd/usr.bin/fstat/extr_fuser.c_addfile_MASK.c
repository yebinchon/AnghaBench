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
struct stat {int /*<<< orphan*/  st_dev; int /*<<< orphan*/  st_ino; } ;
struct reqfile {char const* name; int /*<<< orphan*/  consumers; int /*<<< orphan*/  fsid; int /*<<< orphan*/  fileid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 

__attribute__((used)) static int
FUNC4(const char *path, struct reqfile *reqfile)
{
	struct stat sb;

	FUNC1(path);
	if (FUNC2(path, &sb) != 0) {
		FUNC3("%s", path);
		return (1);
	}
	reqfile->fileid = sb.st_ino;
	reqfile->fsid = sb.st_dev;
	reqfile->name = path;
	FUNC0(&reqfile->consumers);
	return (0);
}