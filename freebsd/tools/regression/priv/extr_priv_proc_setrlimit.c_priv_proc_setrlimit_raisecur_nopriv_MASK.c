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
struct test {int dummy; } ;
struct rlimit {int /*<<< orphan*/  rlim_max; int /*<<< orphan*/  rlim_cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_DATA ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct rlimit rl_lowered ; 
 int FUNC1 (int /*<<< orphan*/ ,struct rlimit*) ; 

void
FUNC2(int asroot, int injail,
    struct test *test)
{
	struct rlimit rl;
	int error;

	rl = rl_lowered;
	rl.rlim_cur = rl.rlim_max;
	error = FUNC1(RLIMIT_DATA, &rl);
	if (asroot && injail)
		FUNC0("priv_proc_setrlimit_raiscur_nopriv(asroot, injail)",
		    error, 0, 0);
	if (asroot && !injail)
		FUNC0("priv_proc_setrlimit_raisecur_nopriv(asroot, !injail)",
		    error, 0, 0);
	if (!asroot && injail)
		FUNC0("priv_proc_setrlimit_raisecur_nopriv(!asroot, injail)",
		    error, 0, 0);
	if (!asroot && !injail)
		FUNC0("priv_proc_setrlimit_raisecur_nopriv(!asroot, !injail)",
		    error, 0, 0);
}