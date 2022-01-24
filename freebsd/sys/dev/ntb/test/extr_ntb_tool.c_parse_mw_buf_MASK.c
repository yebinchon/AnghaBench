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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ DEFAULT_MW_OFF ; 
 scalar_t__ DEFAULT_MW_SIZE ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*,scalar_t__*,char*,scalar_t__*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3(char *buf, char *cmd, ssize_t *offset, ssize_t *buf_size,
    uint64_t *pattern, bool *s_pflag)
{
	char op1[8], op2[8], op3[8];
	uint64_t val1, val2, val3;
	bool vs1, vs2, vs3;
	int rc = 0;

	vs1 = vs2 = vs3 = false;
	FUNC1(buf, "%c %s %jx %s %jx %s %jx",
	    cmd, op1, &val1, op2, &val2, op3, &val3);

	if (*cmd != 'W' && *cmd != 'R')
		return (EINVAL);

	if (!FUNC2(op1, "offset")) {
		*offset = val1 ? val1 : DEFAULT_MW_OFF;
		vs1 = true;
	} else if (!FUNC2(op1, "nbytes")) {
		*buf_size = val1 ? val1: DEFAULT_MW_SIZE;
		vs2 = true;
	} else if (!FUNC2(op1, "pattern")) {
		*pattern = val1;
		vs3 = true;
	}

	if (!vs1 && !FUNC2(op2, "offset")) {
		*offset = val2 ? val2 : DEFAULT_MW_OFF;
		vs1 = true;
	} else if (!vs2 && !FUNC2(op2, "nbytes")) {
		*buf_size = val2 ? val2: DEFAULT_MW_SIZE;
		vs2 = true;
	} else if (!vs3 && !FUNC2(op2, "pattern")) {
		*pattern = val2;
		vs3 = true;
	}

	if (!vs1 && !FUNC2(op3, "offset")) {
		*offset = val3 ? val3 : DEFAULT_MW_OFF;
	} else if (!vs2 && !FUNC2(op3, "nbytes")) {
		*buf_size = val3 ? val3: DEFAULT_MW_SIZE;
	} else if (!vs3 && !FUNC2(op3, "pattern")) {
		*pattern = val3;
		vs3 = true;
	}

	*s_pflag = vs3;
	if (vs3 && *cmd == 'R')
		FUNC0("NTB_TOOL_WARN: pattern is not supported with read "
		    "command\n");

	return (rc);
}