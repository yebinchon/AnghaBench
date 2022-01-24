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
struct stat {int /*<<< orphan*/  st_mode; int /*<<< orphan*/  st_size; } ;
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  EX_DATAERR ; 
 int /*<<< orphan*/  EX_IOERR ; 
 int /*<<< orphan*/  EX_UNAVAILABLE ; 
 int O_DIRECT ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*) ; 
 scalar_t__ FUNC7 (int,struct stat*) ; 
 scalar_t__ FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (char const*,int) ; 

__attribute__((used)) static off_t
FUNC10(const char *path)
{
	struct stat sb;
	off_t mediasize;
	int fd;

	fd = FUNC9(path, O_RDONLY | O_DIRECT);

	if (FUNC7(fd, &sb) < 0)
		FUNC5(EX_IOERR, "fstat failed: %s", path);

	if (FUNC3(sb.st_mode) || FUNC2(sb.st_mode)) {
		FUNC4(fd);
		return (sb.st_size);
	}

	if (!FUNC1(sb.st_mode) && !FUNC0(sb.st_mode))
		FUNC6(EX_DATAERR,
			"invalid type of the file "
			"(not regular, directory nor special device): %s",
			path);

	if (FUNC8(fd, DIOCGMEDIASIZE, &mediasize) < 0)
		FUNC5(EX_UNAVAILABLE,
			"ioctl(DIOCGMEDIASIZE) failed, probably not a disk: "
			"%s", path);

	FUNC4(fd);
	return (mediasize);
}