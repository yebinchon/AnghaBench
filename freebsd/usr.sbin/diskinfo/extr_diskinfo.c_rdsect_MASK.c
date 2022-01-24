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
typedef  int u_int ;
typedef  int off_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int FUNC2 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4(int fd, off_t blockno, u_int sectorsize)
{
	int error;

	if (FUNC2(fd, (off_t)blockno * sectorsize, SEEK_SET) == -1)
		FUNC0(1, "lseek");
	error = FUNC3(fd, buf, sectorsize);
	if (error == -1)
		FUNC0(1, "read");
	if (error != (int)sectorsize)
		FUNC1(1, "disk too small for test.");
}