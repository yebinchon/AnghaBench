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
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char const*) ; 
 char* FUNC2 (char*,char,char*) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*,int) ; 
 char* FUNC6 (char**,char*) ; 

void
FUNC7(const char *path)
{
	char *component, *copy, *tofree, *partial, *tmp;
	int error;

	FUNC0(path[0] == '/');

	/*
	 * +1 to skip the leading slash.
	 */
	copy = tofree = FUNC1(path + 1);

	partial = FUNC1("");
	for (;;) {
		component = FUNC6(&copy, "/");
		if (component == NULL)
			break;
		tmp = FUNC2(partial, '/', component);
		FUNC3(partial);
		partial = tmp;
		//log_debugx("creating \"%s\"", partial);
		error = FUNC5(partial, 0755);
		if (error != 0 && errno != EEXIST) {
			FUNC4("cannot create %s", partial);
			return;
		}
	}

	FUNC3(tofree);
}