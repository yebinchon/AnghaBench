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
typedef  int /*<<< orphan*/  apm_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  APMIO_GETINFO ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void 
FUNC2(int fd, apm_info_t aip)
{
	if (FUNC1(fd, APMIO_GETINFO, aip) == -1)
		FUNC0(1, "ioctl(APMIO_GETINFO)");
}