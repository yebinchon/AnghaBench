#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ucred {int /*<<< orphan*/  cr_label; } ;
struct proc {TYPE_1__* p_ucred; } ;
struct TYPE_2__ {int /*<<< orphan*/  cr_label; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAGIC_CRED ; 
 int /*<<< orphan*/  proc_check_signal ; 

__attribute__((used)) static int
FUNC2(struct ucred *cred, struct proc *p, int signum)
{

	FUNC1(cred->cr_label, MAGIC_CRED);
	FUNC1(p->p_ucred->cr_label, MAGIC_CRED);
	FUNC0(proc_check_signal);

	return (0);
}