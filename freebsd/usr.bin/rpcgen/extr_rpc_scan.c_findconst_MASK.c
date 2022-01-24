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
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(char **str, const char **val)
{
	char *p;
	char *tmp;
	int size;

	p = *str;
	if (*p == '0' && *(p + 1) == 'x') {
		p++;
		do {
			p++;
		} while (FUNC1(*p));
	} else {
		do {
			p++;
		} while (FUNC0(*p));
	}
	size = p - *str + 1;
	tmp = FUNC3(size);
	(void) FUNC2(tmp, *str, size);
	*val = tmp;
	*str = p;
}