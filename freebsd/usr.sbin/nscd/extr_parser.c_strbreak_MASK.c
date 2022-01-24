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
 int /*<<< orphan*/  FUNC0 (int (*) (char*,char**,int)) ; 
 int /*<<< orphan*/  FUNC1 (int (*) (char*,char**,int)) ; 
 char* FUNC2 (char**,char*) ; 

__attribute__((used)) static int
FUNC3(char *str, char **fields, int fields_size)
{
	char	*c = str;
	int	i, num;

	FUNC0(strbreak);
	num = 0;
	for (i = 0;
	     ((*fields =
	     	FUNC2(i < fields_size ? &c : NULL, "\n\t ")) != NULL);
	     ++i)
		if ((*(*fields)) != '\0') {
			++fields;
			++num;
		}

	FUNC1(strbreak);
	return (num);
}