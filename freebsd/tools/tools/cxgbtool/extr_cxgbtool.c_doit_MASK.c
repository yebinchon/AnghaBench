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
 scalar_t__ FUNC0 (int,unsigned long,void*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,char const*) ; 

__attribute__((used)) static int
FUNC3(const char *iff_name, unsigned long cmd, void *data)
{
	static int fd = 0;
	
	if (fd == 0) {
		char buf[64];
		FUNC2(buf, 64, "/dev/%s", iff_name);

		if ((fd = FUNC1(buf, O_RDWR)) < 0)
			return -1;
	}
	
	return FUNC0(fd, cmd, data) < 0 ? -1 : 0;
}