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
typedef  int /*<<< orphan*/  uintmax_t ;
struct statfs {scalar_t__ f_files; scalar_t__ f_bfree; scalar_t__ f_blocks; scalar_t__ f_bsize; int /*<<< orphan*/  f_version; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  STATFS_VERSION ; 
 int /*<<< orphan*/  FUNC0 (struct statfs*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,struct statfs*) ; 

int
FUNC4(int argc, char **argv)
{
	int error;
	struct statfs buf;

	if (argc < 2)
		return EXIT_FAILURE;

	FUNC0(&buf, 0, sizeof(buf));
	buf.f_version = STATFS_VERSION;
	error = FUNC3(argv[1], &buf);
	if (error != 0) {
		FUNC1("statvfs");
		return EXIT_FAILURE;
	}

	(void)FUNC2("f_bsize=%ju\n", (uintmax_t)buf.f_bsize);
	(void)FUNC2("f_blocks=%ju\n", (uintmax_t)buf.f_blocks);
	(void)FUNC2("f_bfree=%ju\n", (uintmax_t)buf.f_bfree);
	(void)FUNC2("f_files=%ju\n", (uintmax_t)buf.f_files);

	return EXIT_SUCCESS;
}