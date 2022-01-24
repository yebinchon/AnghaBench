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
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,scalar_t__) ; 
 scalar_t__ FUNC2 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(const char *test, int fd)
{
	ssize_t len;
	char ch;

	ch = 0;
	len = FUNC2(fd, &ch, 0);
	if (len < 0)
		FUNC0(1, "%s: try_0write", test);
	if (len != 0)
		FUNC1(1, "%s: try_0write: returned %zd", test, len);
}