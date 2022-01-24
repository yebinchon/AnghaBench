#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int recursed; int /*<<< orphan*/  n_rdep; void* rdep; int /*<<< orphan*/  n_bdep; void* bdep; int /*<<< orphan*/  n_fdep; void* fdep; int /*<<< orphan*/  n_pdep; void* pdep; int /*<<< orphan*/  n_edep; void* edep; int /*<<< orphan*/  pkgname; } ;
typedef  TYPE_1__ PORT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC2(PORT * p)
{
	switch (p->recursed) {
	case 0:
		/* First time we've seen this port */
		p->recursed = 1;
		break;
	case 1:
		/* We're in the middle of recursing this port */
		FUNC0(1, "Circular dependency loop found: %s"
		    " depends upon itself.\n", p->pkgname);
	case 2:
		/* This port has already been recursed */
		return;
	}

	p->edep = FUNC1(p->edep, &p->n_edep);
	p->pdep = FUNC1(p->pdep, &p->n_pdep);
	p->fdep = FUNC1(p->fdep, &p->n_fdep);
	p->bdep = FUNC1(p->bdep, &p->n_bdep);
	p->rdep = FUNC1(p->rdep, &p->n_rdep);

	/* Finished recursing on this port */
	p->recursed = 2;
}