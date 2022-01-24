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
struct terminal {struct consdev* consdev; int /*<<< orphan*/  tm_flags; } ;
struct consdev {int /*<<< orphan*/  cn_name; int /*<<< orphan*/  cn_pri; struct terminal* cn_arg; int /*<<< orphan*/ * cn_ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  CN_INTERNAL ; 
 int /*<<< orphan*/  M_TERMINAL ; 
 int M_WAITOK ; 
 int M_ZERO ; 
 int /*<<< orphan*/  TF_CONS ; 
 int /*<<< orphan*/  FUNC0 (struct consdev*) ; 
 struct consdev* FUNC1 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  termcn_cnops ; 
 int /*<<< orphan*/  FUNC3 (struct terminal*) ; 

void
FUNC4(struct terminal *tm)
{
	struct consdev *cp;

	cp = tm->consdev;
	if (cp == NULL) {
		cp = FUNC1(sizeof(struct consdev), M_TERMINAL,
		    M_WAITOK|M_ZERO);
		cp->cn_ops = &termcn_cnops;
		cp->cn_arg = tm;
		cp->cn_pri = CN_INTERNAL;
		FUNC2(cp->cn_name, "ttyv0");

		tm->tm_flags = TF_CONS;
		tm->consdev = cp;

		FUNC3(tm);
	}

	/* Attach terminal as console. */
	FUNC0(cp);
}