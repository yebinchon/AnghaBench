#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* name; } ;
typedef  TYPE_1__ DEP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 TYPE_1__* FUNC1 (size_t) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char**,char*) ; 

__attribute__((used)) static DEP *
FUNC5(char * str, size_t * n)
{
	DEP * d;
	size_t i;

	/* No depends at all? */
	if (str[0] == 0) {
		*n = 0;
		return NULL;
	}

	/* Count the number of fields */
	*n = 1;
	for (i = 0; str[i] != 0; i++)
		if (str[i] == ' ')
			(*n)++;

	/* Allocate and fill an array */
	d = FUNC1(*n * sizeof(DEP));
	if (d == NULL)
		FUNC0(1, "malloc(DEP)");
	for (i = 0; i < *n; i++) {
		d[i].name = FUNC2(FUNC4(&str, " "));

		/* Strip trailing slashes */
		if (d[i].name[FUNC3(d[i].name) - 1] == '/')
			d[i].name[FUNC3(d[i].name) - 1] = 0;
	}

	return d;
}