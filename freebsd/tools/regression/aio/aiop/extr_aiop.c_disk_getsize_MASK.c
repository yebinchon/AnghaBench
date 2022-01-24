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
typedef  size_t off_t ;

/* Variables and functions */
 int /*<<< orphan*/  DIOCGMEDIASIZE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ,size_t*) ; 

__attribute__((used)) static size_t
FUNC2(int fd)
{
	off_t mediasize;	

	if (FUNC1(fd, DIOCGMEDIASIZE, &mediasize) < 0)
		FUNC0(1, "ioctl(DIOCGMEDIASIZE)");
	return (mediasize);
}