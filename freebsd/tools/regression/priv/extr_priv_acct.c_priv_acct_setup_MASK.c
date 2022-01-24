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
struct test {scalar_t__ t_test_func; } ;
typedef  int /*<<< orphan*/  i ;

/* Variables and functions */
 int /*<<< orphan*/ * SYSCTL_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fpath1 ; 
 int fpath1_initialized ; 
 int /*<<< orphan*/ * fpath2 ; 
 int fpath2_initialized ; 
 scalar_t__ priv_acct_disable ; 
 scalar_t__ priv_acct_enable ; 
 scalar_t__ priv_acct_noopdisable ; 
 scalar_t__ priv_acct_rotate ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 

int
FUNC5(int asroot, int injail, struct test *test)
{
	size_t len;
	int i;

	len = sizeof(i);
	if (FUNC2(SYSCTL_NAME, &i, &len, NULL, 0) < 0) {
		FUNC3("priv_acct_setup: sysctlbyname(%s)", SYSCTL_NAME);
		return (-1);
	}
	if (i != 0) {
		FUNC4("sysctlbyname(%s) indicates accounting configured",
		    SYSCTL_NAME);
		return (-1);
	}
	FUNC1("priv_acct_setup: fpath1", fpath1, 0, 0, 0666);
	fpath1_initialized = 1;
	FUNC1("priv_acct_setup: fpath2", fpath2, 0, 0, 0666);
	fpath2_initialized = 1;

	if (test->t_test_func == priv_acct_enable ||
	    test->t_test_func == priv_acct_noopdisable) {
		if (FUNC0(NULL) != 0) {
			FUNC3("priv_acct_setup: acct(NULL)");
			return (-1);
		}
	} else if (test->t_test_func == priv_acct_disable ||
	     test->t_test_func == priv_acct_rotate) {
		if (FUNC0(fpath1) != 0) {
			FUNC3("priv_acct_setup: acct(\"%s\")", fpath1);
			return (-1);
		}
	}
	return (0);
}