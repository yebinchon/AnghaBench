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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FALSE ; 
 int MAX_TEMPSTR ; 
 int TRUE ; 
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(char *string, FILE *file)
{
	char line[MAX_TEMPSTR];

	FUNC1(file);
	while (FUNC0(line, MAX_TEMPSTR, file)) {
		if (line[0] != '\0')
			if (line[FUNC3(line)-1] == '\n')
				line[FUNC3(line)-1] = '\0';
		if (0 == FUNC2(line, string))
			return TRUE;
	}
	return FALSE;
}