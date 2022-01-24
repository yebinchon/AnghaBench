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
typedef  long long uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  A_TP_CMM_TCB_BASE ; 
 int EINVAL ; 
 unsigned int TCB_SIZE ; 
 int FUNC0 (long long,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,long long*) ; 
 int /*<<< orphan*/  show_tcb ; 
 char* FUNC2 (char const*,long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static int
FUNC4(int argc, const char *argv[])
{
	char *p;
	long l;
	long long val;
	unsigned int tid;
	uint32_t addr;
	int rc;

	if (argc != 1) {
		FUNC3("incorrect number of arguments.");
		return (EINVAL);
	}

	p = FUNC2(argv[0], &l, NULL);
	if (*p) {
		FUNC3("invalid tid \"%s\"", argv[0]);
		return (EINVAL);
	}
	tid = l;

	rc = FUNC1(A_TP_CMM_TCB_BASE, 4, &val);
	if (rc != 0)
		return (rc);

	addr = val + tid * TCB_SIZE;

	return (FUNC0(addr, TCB_SIZE, show_tcb));
}