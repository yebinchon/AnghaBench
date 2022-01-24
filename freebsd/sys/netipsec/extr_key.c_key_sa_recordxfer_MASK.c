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
struct secasvar {scalar_t__ firstused; int /*<<< orphan*/  lft_c_allocations; int /*<<< orphan*/  lft_c_bytes; } ;
struct TYPE_2__ {int len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ time_second ; 

void
FUNC2(struct secasvar *sav, struct mbuf *m)
{
	FUNC0(sav != NULL, ("Null secasvar"));
	FUNC0(m != NULL, ("Null mbuf"));

	/*
	 * XXX Currently, there is a difference of bytes size
	 * between inbound and outbound processing.
	 */
	FUNC1(sav->lft_c_bytes, m->m_pkthdr.len);

	/*
	 * We use the number of packets as the unit of
	 * allocations.  We increment the variable
	 * whenever {esp,ah}_{in,out}put is called.
	 */
	FUNC1(sav->lft_c_allocations, 1);

	/*
	 * NOTE: We record CURRENT usetime by using wall clock,
	 * in seconds.  HARD and SOFT lifetime are measured by the time
	 * difference (again in seconds) from usetime.
	 *
	 *	usetime
	 *	v     expire   expire
	 * -----+-----+--------+---> t
	 *	<--------------> HARD
	 *	<-----> SOFT
	 */
	if (sav->firstused == 0)
		sav->firstused = time_second;
}