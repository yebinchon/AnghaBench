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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static char *
FUNC3(char *str, char *old)
{
	char *new;
	int newsize = FUNC2(str) + 1;
	int oldsize = old ? FUNC2(old) + 1 : 0;

	if ((new = FUNC1(newsize + oldsize)) != NULL) {
		if (oldsize) {
			FUNC0(old, new, oldsize);
			new[oldsize - 1] = ' ';
		}
		FUNC0(str, new + oldsize, newsize);
	}
	return (new);
}