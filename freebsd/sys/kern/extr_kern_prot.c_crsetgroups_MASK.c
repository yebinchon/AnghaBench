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
struct ucred {int dummy; } ;
typedef  int /*<<< orphan*/  gid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ucred*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ucred*,int,int /*<<< orphan*/ *) ; 
 int ngroups_max ; 

void
FUNC2(struct ucred *cr, int ngrp, gid_t *groups)
{

	if (ngrp > ngroups_max + 1)
		ngrp = ngroups_max + 1;

	FUNC0(cr, ngrp);
	FUNC1(cr, ngrp, groups);
}