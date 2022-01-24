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
struct TYPE_2__ {int flags; } ;
struct dn_schk {scalar_t__ siht; TYPE_1__ sch; } ;
struct copy_args {int dummy; } ;

/* Variables and functions */
 int DN_HAVE_MASK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,struct copy_args*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/  (*) (scalar_t__,struct copy_args*),struct copy_args*) ; 

__attribute__((used)) static int
FUNC2(struct copy_args *a, struct dn_schk *s, int flags)
{
	if (s->sch.flags & DN_HAVE_MASK)
		FUNC1(s->siht, copy_si_cb, a);
	else if (s->siht)
		FUNC0(s->siht, a);
	return 0;
}