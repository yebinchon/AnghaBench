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
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int,struct stat*) ; 
 int FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(const char *path, FILE *fp)
{
	int error, fd;
	off_t mediasize;
	struct stat sb;

	fd = FUNC3(fp);

	error = FUNC4(fd, &sb);
	if (error != 0)
		FUNC1(1, "%s: fstat", path);

	if (FUNC0(sb.st_mode))
		return;

	error = FUNC5(fd, DIOCGMEDIASIZE, &mediasize);
	if (error != 0)
		FUNC2(1, "%s: not a disk", path);
}