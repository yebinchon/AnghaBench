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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char) ; 
 char* FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 

__attribute__((used)) static int
FUNC5(char **line, size_t *linesize)
{
	char *s;
	int freeme = 0;
	
	for (s = *line; (unsigned)(s - *line) < *linesize; s++) {
		if (!FUNC1(*s))
			break;
	}
	if (*s == '#') {
		**line = '\0';
		*linesize = 0;
		return (freeme);
	}
	FUNC3(*line, s, *linesize - (s - *line));
	*linesize -= s - *line;
	for (s = &(*line)[*linesize - 1]; s >= *line; s--) {
		if (!FUNC1(*s))
			break;
	}
	if (s != &(*line)[*linesize - 1]) {
		*linesize = s - *line + 1;
	} else {
		s = FUNC2(*linesize + 1);
		if (s == NULL)
			FUNC0(1, "malloc");
		FUNC4(s, *line, *linesize);
		*line = s;
		freeme = 1;
	}
	(*line)[*linesize] = '\0';
	return (freeme);
}