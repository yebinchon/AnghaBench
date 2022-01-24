#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
struct TYPE_8__ {int /*<<< orphan*/  m_data; int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ PLAN ;
typedef  TYPE_2__ OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FTS_NOSTAT ; 
 int /*<<< orphan*/  F_ANY ; 
 int /*<<< orphan*/  F_ATLEAST ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ftsoptions ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC3 (TYPE_2__*,char***) ; 
 TYPE_1__* FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 

PLAN *
FUNC6(OPTION *option, char ***argvp)
{
	char *perm;
	PLAN *new;
	mode_t *set;

	perm = FUNC3(option, argvp);
	ftsoptions &= ~FTS_NOSTAT;

	new = FUNC4(option);

	if (*perm == '-') {
		new->flags |= F_ATLEAST;
		++perm;
	} else if (*perm == '+') {
		new->flags |= F_ANY;
		++perm;
	}

	if ((set = FUNC5(perm)) == NULL)
		FUNC0(1, "%s: %s: illegal mode string", option->name, perm);

	new->m_data = FUNC2(set, 0);
	FUNC1(set);
	return new;
}