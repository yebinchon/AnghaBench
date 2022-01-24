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
typedef  int /*<<< orphan*/  option_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/  const*,char*,char*,char*,size_t) ; 

int
FUNC4(const option_t *options, const char *option, char *buf, size_t len)
{
	char *var, *val;
	int retval;

	FUNC0(option != NULL);

	var = FUNC1(option);
	for (val = var; *val; val++)
		if (*val == '=') {
			*val++ = '\0';
			break;
		}
	retval = FUNC3(options, var, val, buf, len);
	FUNC2(var);
	return retval;
}