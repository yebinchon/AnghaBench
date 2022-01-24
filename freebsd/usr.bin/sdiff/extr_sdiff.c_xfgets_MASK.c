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
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char**,size_t*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static char *
FUNC4(FILE *file)
{
	size_t linecap;
	ssize_t l;
	char *s;

	FUNC0(file);
	linecap = 0;
	s = NULL;

	if ((l = FUNC3(&s, &linecap, file)) == -1) {
		if (FUNC2(file))
			FUNC1(2, "error reading file");
		return (NULL);
	}

	if (s[l-1] == '\n')
		s[l-1] = '\0';

	return (s);
}