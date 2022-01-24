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
struct TYPE_2__ {int /*<<< orphan*/  sin6; int /*<<< orphan*/  sin; } ;
struct pfr_kentry {scalar_t__ pfrke_af; int /*<<< orphan*/  pfrke_counters; int /*<<< orphan*/  pfrke_not; int /*<<< orphan*/  pfrke_net; TYPE_1__ pfrke_sa; } ;
struct pfr_addr {scalar_t__ pfra_af; int /*<<< orphan*/  pfra_not; int /*<<< orphan*/  pfra_net; int /*<<< orphan*/  pfra_ip6addr; int /*<<< orphan*/  pfra_ip4addr; } ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int PFR_DIR_MAX ; 
 int PFR_OP_ADDR_MAX ; 
 int /*<<< orphan*/  V_pfr_kentry_z ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pfr_kentry*) ; 
 struct pfr_kentry* FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct pfr_kentry *
FUNC5(struct pfr_addr *ad)
{
	struct pfr_kentry	*ke;
	int pfr_dir, pfr_op;

	ke =  FUNC4(V_pfr_kentry_z, M_NOWAIT | M_ZERO);
	if (ke == NULL)
		return (NULL);

	if (ad->pfra_af == AF_INET)
		FUNC0(ke->pfrke_sa.sin, ad->pfra_ip4addr);
	else if (ad->pfra_af == AF_INET6)
		FUNC1(ke->pfrke_sa.sin6, ad->pfra_ip6addr);
	ke->pfrke_af = ad->pfra_af;
	ke->pfrke_net = ad->pfra_net;
	ke->pfrke_not = ad->pfra_not;
	for (pfr_dir = 0; pfr_dir < PFR_DIR_MAX; pfr_dir ++)
		for (pfr_op = 0; pfr_op < PFR_OP_ADDR_MAX; pfr_op ++) {
			if (! FUNC2(&ke->pfrke_counters,
			    pfr_dir, pfr_op)) {
				FUNC3(ke);
				return (NULL);
			}
		}
	return (ke);
}