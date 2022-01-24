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
#define  EX_DATAERR 129 
 int /*<<< orphan*/  EX_OSERR ; 
#define  EX_UNAVAILABLE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 (char*,char) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC6(char *line)
{
	int rv;
	char *keyword, *arg;

	keyword = FUNC3(line);
	if (keyword == NULL)
		FUNC0(EX_OSERR, "malloc() failed");
	if ((arg = FUNC4(keyword, '=')) != NULL)
		*arg++ = '\0';
	switch (rv = FUNC2(keyword, arg)) {
		case EX_UNAVAILABLE:
			FUNC5("nothing available for '%s'.", keyword);
			break;
		case EX_DATAERR:
			FUNC5("invalid value '%s' for '%s'.", arg, keyword);
			break;
	}
	FUNC1(keyword);
	return(rv);
}