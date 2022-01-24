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
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int /*<<< orphan*/  SIGTSTP ; 
 int /*<<< orphan*/  SIGTTIN ; 
 int /*<<< orphan*/  SIGTTOU ; 
 int /*<<< orphan*/  FUNC2 (struct proc*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct proc *p)
{
	sigset_t set;

	FUNC1(set);
	FUNC0(set, SIGSTOP);
	FUNC0(set, SIGTSTP);
	FUNC0(set, SIGTTIN);
	FUNC0(set, SIGTTOU);
	FUNC2(p, &set);
}