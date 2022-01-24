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
 int EFTYPE ; 
 int FUNC0 (int*,int /*<<< orphan*/ *,char const*,int*,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const**) ; 
 unsigned long FUNC1 (char const*,char**,int /*<<< orphan*/ ) ; 

int
FUNC2(const char *name, int unit, const char *resname,
    long *result)
{
	int error;
	const char *str;
	char *op;
	unsigned long val;
	int line;

	line = 0;
	error = FUNC0(&line, NULL, name, &unit, resname, NULL,
	    NULL, NULL, NULL, NULL, NULL, &str);
	if (error)
		return error;
	if (*str == '\0') 
		return EFTYPE;
	val = FUNC1(str, &op, 0);
	if (*op != '\0') 
		return EFTYPE;
	*result = val;
	return 0;
}