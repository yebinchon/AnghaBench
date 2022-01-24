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
typedef  int /*<<< orphan*/  u_int ;
struct in_addr {int dummy; } ;
struct TYPE_2__ {struct in_addr addr4; } ;
struct llentry {int lle_refcnt; int /*<<< orphan*/  lle_timer; int /*<<< orphan*/  lle_free; TYPE_1__ r_l3addr; int /*<<< orphan*/  la_expire; } ;
struct in_llentry {struct llentry base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct llentry*) ; 
 int /*<<< orphan*/  FUNC1 (struct llentry*) ; 
 int /*<<< orphan*/  M_LLTABLE ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  in_lltable_destroy_lle ; 
 struct in_llentry* FUNC3 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  time_uptime ; 

__attribute__((used)) static struct llentry *
FUNC4(struct in_addr addr4, u_int flags)
{
	struct in_llentry *lle;

	lle = FUNC3(sizeof(struct in_llentry), M_LLTABLE, M_NOWAIT | M_ZERO);
	if (lle == NULL)		/* NB: caller generates msg */
		return NULL;

	/*
	 * For IPv4 this will trigger "arpresolve" to generate
	 * an ARP request.
	 */
	lle->base.la_expire = time_uptime; /* mark expired */
	lle->base.r_l3addr.addr4 = addr4;
	lle->base.lle_refcnt = 1;
	lle->base.lle_free = in_lltable_destroy_lle;
	FUNC0(&lle->base);
	FUNC1(&lle->base);
	FUNC2(&lle->base.lle_timer, 1);

	return (&lle->base);
}