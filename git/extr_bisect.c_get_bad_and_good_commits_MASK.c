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
struct repository {int dummy; } ;
struct commit {int dummy; } ;
struct TYPE_2__ {int nr; scalar_t__ oid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct commit**,int) ; 
 scalar_t__ current_bad_oid ; 
 struct commit* FUNC1 (struct repository*,scalar_t__) ; 
 TYPE_1__ good_revs ; 

__attribute__((used)) static struct commit **FUNC2(struct repository *r,
						int *rev_nr)
{
	struct commit **rev;
	int i, n = 0;

	FUNC0(rev, 1 + good_revs.nr);
	rev[n++] = FUNC1(r, current_bad_oid);
	for (i = 0; i < good_revs.nr; i++)
		rev[n++] = FUNC1(r, good_revs.oid + i);
	*rev_nr = n;

	return rev;
}