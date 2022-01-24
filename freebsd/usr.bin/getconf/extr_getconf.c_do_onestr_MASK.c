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
 size_t FUNC0 (int,char*,size_t) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static void
FUNC3(const char *name, int key)
{
	size_t len;

	errno = 0;
	len = FUNC0(key, 0, 0);
	if (len == 0 && errno != 0) {
		FUNC2("confstr: %s", name);
		return;
	}
	FUNC1("%s: ", name);
	if (len == 0)
		FUNC1("undefined\n");
	else {
		char buf[len + 1];

		FUNC0(key, buf, len);
		FUNC1("%s\n", buf);
	}
}