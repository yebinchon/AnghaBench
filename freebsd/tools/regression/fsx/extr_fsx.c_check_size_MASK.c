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
struct stat {int st_size; } ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  fd ; 
 int file_size ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct stat*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long long,unsigned long long,unsigned long long) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

void
FUNC5(void)
{
	struct stat	statbuf;
	off_t	size_by_seek;

	if (FUNC0(fd, &statbuf)) {
		FUNC3("check_size: fstat");
		statbuf.st_size = -1;
	}
	size_by_seek = FUNC1(fd, (off_t)0, SEEK_END);
	if (file_size != statbuf.st_size || file_size != size_by_seek) {
		FUNC2("Size error: expected 0x%llx stat 0x%llx seek 0x%llx\n",
		    (unsigned long long)file_size,
		    (unsigned long long)statbuf.st_size,
		    (unsigned long long)size_by_seek);
		FUNC4(120);
	}
}