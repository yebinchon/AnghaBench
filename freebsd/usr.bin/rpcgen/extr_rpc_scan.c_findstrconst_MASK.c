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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(char **str, const char **val)
{
	char *p;
	char *tmp;
	int size;

	p = *str;
	do {
		p++;
	} while (*p && *p != '"');
	if (*p == 0) {
		FUNC0("unterminated string constant");
	}
	p++;
	size = p - *str + 1;
	tmp = FUNC2(size);
	(void) FUNC1(tmp, *str, size);
	*val = tmp;
	*str = p;
}