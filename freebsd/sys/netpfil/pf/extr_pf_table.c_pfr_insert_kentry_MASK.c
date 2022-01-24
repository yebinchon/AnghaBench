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
struct pfr_ktable {int /*<<< orphan*/  pfrkt_cnt; } ;
struct TYPE_2__ {long pfrkc_tzero; } ;
struct pfr_kentry {TYPE_1__ pfrke_counters; } ;
struct pfr_addr {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct pfr_kentry* FUNC0 (struct pfr_addr*) ; 
 struct pfr_kentry* FUNC1 (struct pfr_ktable*,struct pfr_addr*,int) ; 
 int FUNC2 (struct pfr_ktable*,struct pfr_kentry*) ; 

int
FUNC3(struct pfr_ktable *kt, struct pfr_addr *ad, long tzero)
{
	struct pfr_kentry	*p;
	int			 rv;

	p = FUNC1(kt, ad, 1);
	if (p != NULL)
		return (0);
	p = FUNC0(ad);
	if (p == NULL)
		return (ENOMEM);

	rv = FUNC2(kt, p);
	if (rv)
		return (rv);

	p->pfrke_counters.pfrkc_tzero = tzero;
	kt->pfrkt_cnt++;

	return (0);
}