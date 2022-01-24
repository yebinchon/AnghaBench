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

/* Variables and functions */
 int /*<<< orphan*/  APMIO_HALTCPU ; 
 int /*<<< orphan*/  APMIO_NOTHALTCPU ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(int fd, int enable)
{
	if (enable) {
		if (FUNC1(fd, APMIO_HALTCPU, NULL) == -1)
			FUNC0(1, "ioctl(APMIO_HALTCPU)");
	} else {
		if (FUNC1(fd, APMIO_NOTHALTCPU, NULL) == -1)
			FUNC0(1, "ioctl(APMIO_NOTHALTCPU)");
	}
}