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
typedef  int /*<<< orphan*/  off_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
FUNC2(int fd, off_t mediasize, u_int sectorsize)
{
	FUNC1("Asynchronous random reads:\n");

	FUNC1("\tsectorsize:  ");
	FUNC0(fd, mediasize, sectorsize);

	if (sectorsize != 4096) {
		FUNC1("\t4 kbytes:    ");
		FUNC0(fd, mediasize, 4096);
	}

	FUNC1("\t32 kbytes:   ");
	FUNC0(fd, mediasize, 32 * 1024);

	FUNC1("\t128 kbytes:  ");
	FUNC0(fd, mediasize, 128 * 1024);

	FUNC1("\n");
}