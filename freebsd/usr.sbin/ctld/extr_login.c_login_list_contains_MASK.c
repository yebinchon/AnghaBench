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
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 
 char* FUNC3 (char**,char*) ; 

__attribute__((used)) static int
FUNC4(const char *list, const char *what)
{
	char *tofree, *str, *token;

	tofree = str = FUNC0(list);

	while ((token = FUNC3(&str, ",")) != NULL) {
		if (FUNC2(token, what) == 0) {
			FUNC1(tofree);
			return (1);
		}
	}
	FUNC1(tofree);
	return (0);
}