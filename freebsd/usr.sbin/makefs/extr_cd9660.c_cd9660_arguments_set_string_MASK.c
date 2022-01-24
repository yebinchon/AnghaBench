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
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (char const*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 

__attribute__((used)) static int
FUNC6(const char *val, const char *fieldtitle, int length,
			    char testmode, char * dest)
{
	int len, test;

	if (val == NULL)
		FUNC5("error: The %s requires a string argument", fieldtitle);
	else if ((len = FUNC4(val)) <= length) {
		if (testmode == 'd')
			test = FUNC2(val);
		else
			test = FUNC1(val);
		if (test) {
			FUNC3(dest, val, len);
			if (test == 2)
				FUNC0(dest, len);
			return 1;
		} else
			FUNC5("error: The %s must be composed of "
			      "%c-characters", fieldtitle, testmode);
	} else
		FUNC5("error: The %s must be at most 32 characters long",
		    fieldtitle);
	return 0;
}