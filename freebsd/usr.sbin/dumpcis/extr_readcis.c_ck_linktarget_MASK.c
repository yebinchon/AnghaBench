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
typedef  char* uintmax_t ;
typedef  scalar_t__ off_t ;

/* Variables and functions */
 char CIS_LINKTARGET ; 
 int /*<<< orphan*/  PIOCRWFLAG ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC2 (int,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,char*,int) ; 

__attribute__((used)) static int
FUNC4(int fd, off_t offs, int flag)
{
	char    blk[5];

	if (FUNC1(fd, PIOCRWFLAG, &flag) < 0)
		FUNC0(1, "Setting flag to rad %s memory failed",
		    flag ? "attribute" : "common");
	if (FUNC2(fd, offs, SEEK_SET) < 0)
		FUNC0(1, "Unable to seek to memory offset %ju",
		    (uintmax_t)offs);
	if (FUNC3(fd, blk, 5) != 5)
		return (0);
	if (blk[0] == CIS_LINKTARGET &&
	    blk[1] == 0x3 &&
	    blk[2] == 'C' &&
	    blk[3] == 'I' &&
	    blk[4] == 'S')
		return (1);
	return (0);
}