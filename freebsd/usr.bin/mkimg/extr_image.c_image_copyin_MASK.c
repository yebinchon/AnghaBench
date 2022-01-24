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
typedef  int /*<<< orphan*/  uint64_t ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  lba_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int,struct stat*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

int
FUNC5(lba_t blk, int fd, uint64_t *sizep)
{
	struct stat sb;
	int error;

	error = FUNC2(blk);
	if (!error) {
		if (FUNC1(fd, &sb) == -1 || !FUNC0(sb.st_mode))
			error = FUNC4(blk, fd, sizep);
		else
			error = FUNC3(blk, fd, sizep);
	}
	return (error);
}