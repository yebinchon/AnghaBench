#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ recursed; void* www; int /*<<< orphan*/  n_rdep; void* rdep; int /*<<< orphan*/  n_bdep; void* bdep; int /*<<< orphan*/  n_fdep; void* fdep; int /*<<< orphan*/  n_pdep; void* pdep; int /*<<< orphan*/  n_edep; void* edep; void* categories; void* maintainer; void* pkgdescr; void* comment; void* prefix; void* portdir; void* pkgname; } ;
typedef  TYPE_1__ PORT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char**,char*) ; 

__attribute__((used)) static PORT *
FUNC6(char * line)
{
	PORT * p;
	size_t i, n;

	/* Verify that line has the right number of fields */
	for (n = i = 0; line[i] != 0; i++)
		if (line[i] == '|')
			n++;
	if (n != 12)
		FUNC1(1, "Port describe line is corrupt:\n%s\n", line);

	p = FUNC3(sizeof(PORT));
	if (p == NULL)
		FUNC0(1, "malloc(PORT)");

	p->pkgname = FUNC4(FUNC5(&line, "|"));
	p->portdir = FUNC4(FUNC5(&line, "|"));
	p->prefix = FUNC4(FUNC5(&line, "|"));
	p->comment = FUNC4(FUNC5(&line, "|"));
	p->pkgdescr = FUNC4(FUNC5(&line, "|"));
	p->maintainer = FUNC4(FUNC5(&line, "|"));
	p->categories = FUNC4(FUNC5(&line, "|"));
	p->edep = FUNC2(FUNC5(&line, "|"), &p->n_edep);
	p->pdep = FUNC2(FUNC5(&line, "|"), &p->n_pdep);
	p->fdep = FUNC2(FUNC5(&line, "|"), &p->n_fdep);
	p->bdep = FUNC2(FUNC5(&line, "|"), &p->n_bdep);
	p->rdep = FUNC2(FUNC5(&line, "|"), &p->n_rdep);
	p->www = FUNC4(FUNC5(&line, "|"));

	p->recursed = 0;

	/*
	 * line will now be equal to NULL -- we counted the field
	 * separators at the top of the function.
	 */

	return p;
}