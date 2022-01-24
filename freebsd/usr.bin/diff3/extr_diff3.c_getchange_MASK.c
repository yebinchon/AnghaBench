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
 char* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (unsigned char) ; 

__attribute__((used)) static char *
FUNC2(FILE *b)
{
	char *line;

	while ((line = FUNC0(b, NULL))) {
		if (FUNC1((unsigned char)line[0]))
			return (line);
	}
	return (NULL);
}