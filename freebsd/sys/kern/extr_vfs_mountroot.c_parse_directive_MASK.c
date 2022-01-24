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
 int EINVAL ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (char**) ; 
 int FUNC2 (char**) ; 
 int FUNC3 (char**) ; 
 int FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (char**,char) ; 
 int FUNC6 (char**,char**) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static int
FUNC9(char **conf)
{
	char *dir;
	int error;

	error = FUNC6(conf, &dir);
	if (error)
		return (error);

	if (FUNC8(dir, ".ask") == 0)
		error = FUNC1(conf);
	else if (FUNC8(dir, ".md") == 0)
		error = FUNC2(conf);
	else if (FUNC8(dir, ".onfail") == 0)
		error = FUNC3(conf);
	else if (FUNC8(dir, ".timeout") == 0)
		error = FUNC4(conf);
	else {
		FUNC7("mountroot: invalid directive `%s'\n", dir);
		/* Ignore the rest of the line. */
		(void)FUNC5(conf, '\n');
		error = EINVAL;
	}
	FUNC0(dir, M_TEMP);
	return (error);
}