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

/* Variables and functions */
 int /*<<< orphan*/  MTREW ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int,struct stat*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(int fd)
{
	struct stat sp;

	if(FUNC2(fd, &sp))
		FUNC1(12, "fstat in rewind");

	/*
	 * don't want to do tape ioctl on regular files:
	 */
	if( FUNC0(sp.st_mode) ) {
		if( FUNC3(fd, 0, SEEK_SET) == -1 )
			FUNC1(13, "lseek");
	} else
		/*  assume its a tape	*/
		FUNC4(fd, MTREW);
}