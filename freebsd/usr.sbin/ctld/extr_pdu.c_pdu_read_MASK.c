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
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int,char*,size_t) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static void
FUNC4(int fd, char *data, size_t len)
{
	ssize_t ret;

	while (len > 0) {
		ret = FUNC2(fd, data, len);
		if (ret < 0) {
			if (FUNC3())
				FUNC1(1, "exiting due to timeout");
			FUNC0(1, "read");
		} else if (ret == 0)
			FUNC1(1, "read: connection lost");
		len -= ret;
		data += ret;
	}
}