#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ nlink_t ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
struct TYPE_9__ {scalar_t__ l_data; } ;
typedef  TYPE_1__ PLAN ;
typedef  TYPE_2__ OPTION ;

/* Variables and functions */
 int /*<<< orphan*/  FTS_NOSTAT ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ftsoptions ; 
 char* FUNC1 (TYPE_2__*,char***) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 

PLAN *
FUNC3(OPTION *option, char ***argvp)
{
	char *nlinks;
	PLAN *new;

	nlinks = FUNC1(option, argvp);
	ftsoptions &= ~FTS_NOSTAT;

	new = FUNC2(option);
	new->l_data = (nlink_t)FUNC0(new, option->name, nlinks, NULL);
	return new;
}