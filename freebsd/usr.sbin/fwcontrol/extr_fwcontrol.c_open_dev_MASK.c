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
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC0 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1(int *fd, char *devname)
{
	if (*fd < 0) {
		*fd = FUNC0(devname, O_RDWR);
		if (*fd < 0)
			return(-1);

	}
	return(0);
}