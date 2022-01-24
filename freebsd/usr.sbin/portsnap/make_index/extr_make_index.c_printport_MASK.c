#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_1__* p; } ;
struct TYPE_6__ {size_t n_edep; size_t n_pdep; size_t n_fdep; size_t n_bdep; size_t n_rdep; char* pkgname; char* portdir; char* prefix; char* comment; char* pkgdescr; char* maintainer; char* categories; char* www; TYPE_3__* fdep; TYPE_3__* pdep; TYPE_3__* edep; TYPE_3__* rdep; TYPE_3__* bdep; } ;
struct TYPE_5__ {int /*<<< orphan*/  pkgname; } ;
typedef  TYPE_2__ PORT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,size_t) ; 

__attribute__((used)) static void
FUNC2(PORT * p)
{
	size_t i;

	FUNC1(p->edep, p->n_edep);
	FUNC1(p->pdep, p->n_pdep);
	FUNC1(p->fdep, p->n_fdep);
	FUNC1(p->bdep, p->n_bdep);
	FUNC1(p->rdep, p->n_rdep);

	FUNC0("%s|%s|%s|%s|%s|%s|%s|",
	    p->pkgname, p->portdir, p->prefix, p->comment, p->pkgdescr, 
	    p->maintainer, p->categories);
	for (i = 0; i < p->n_bdep; i++)
		FUNC0("%s%s", i ? " " : "", p->bdep[i].p->pkgname);
	FUNC0("|");
	for (i = 0; i < p->n_rdep; i++)
		FUNC0("%s%s", i ? " " : "", p->rdep[i].p->pkgname);
	FUNC0("|");
	FUNC0("%s|", p->www);
	for (i = 0; i < p->n_edep; i++)
		FUNC0("%s%s", i ? " " : "", p->edep[i].p->pkgname);
	FUNC0("|");
	for (i = 0; i < p->n_pdep; i++)
		FUNC0("%s%s", i ? " " : "", p->pdep[i].p->pkgname);
	FUNC0("|");
	for (i = 0; i < p->n_fdep; i++)
		FUNC0("%s%s", i ? " " : "", p->fdep[i].p->pkgname);
	FUNC0("\n");
}