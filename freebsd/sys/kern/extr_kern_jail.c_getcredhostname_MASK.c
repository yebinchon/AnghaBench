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
struct ucred {struct prison* cr_prison; } ;
struct prison {int /*<<< orphan*/  pr_mtx; int /*<<< orphan*/  pr_hostname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct prison prison0 ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 

void
FUNC3(struct ucred *cred, char *buf, size_t size)
{
	struct prison *pr;

	/*
	 * A NULL credential can be used to shortcut to the physical
	 * system's hostname.
	 */
	pr = (cred != NULL) ? cred->cr_prison : &prison0;
	FUNC0(&pr->pr_mtx);
	FUNC2(buf, pr->pr_hostname, size);
	FUNC1(&pr->pr_mtx);
}