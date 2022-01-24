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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static int
FUNC3(const char *path, char *temp, size_t tsize)
{
	char *p;

	(void)FUNC1(temp, path, tsize);
	temp[tsize - 1] = '\0';
	if ((p = FUNC2(temp, '/')) != NULL)
		p++;
	else
		p = temp;
	(void)FUNC1(p, "INS@XXXX", &temp[tsize - 1] - p);
	temp[tsize - 1] = '\0';
	return (FUNC0(temp));
}