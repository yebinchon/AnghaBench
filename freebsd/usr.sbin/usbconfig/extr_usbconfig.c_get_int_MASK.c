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
 int /*<<< orphan*/  FUNC0 (int,char*,char const*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*) ; 
 int FUNC2 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(const char *s)
{
	int val;
	char *ep;

	errno = 0;
	val = FUNC2(s, &ep, 0);
	if (errno) {
		FUNC0(1, "%s", s);
	}
	if (*ep != '\0') {
		FUNC1(1, "illegal number: %s", s);
	}
	return val;
}