#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int sin6_len; int sin6_family; } ;
struct TYPE_5__ {int sin_len; int sin_family; } ;
union sockaddr_union {TYPE_2__ sin6; TYPE_1__ sin; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct pfr_ktable {int pfrkt_flags; int /*<<< orphan*/  pfrkt_match; TYPE_4__* pfrkt_ip6; TYPE_3__* pfrkt_ip4; int /*<<< orphan*/  pfrkt_nomatch; struct pfr_ktable* pfrkt_root; } ;
struct pfr_kentry {int /*<<< orphan*/  pfrke_net; union sockaddr_union pfrke_sa; } ;
struct pf_addr {int dummy; } ;
typedef  int const sa_family_t ;
struct TYPE_8__ {int /*<<< orphan*/  rh; } ;
struct TYPE_7__ {int /*<<< orphan*/  rh; } ;

/* Variables and functions */
#define  AF_INET 129 
#define  AF_INET6 128 
 int /*<<< orphan*/  FUNC0 (struct pfr_kentry*) ; 
 int PFR_TFLAG_ACTIVE ; 
 int /*<<< orphan*/  FUNC1 (struct pf_addr*,struct pf_addr*,int const) ; 
 int /*<<< orphan*/  FUNC2 (struct pf_addr*,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct pf_addr*,struct pf_addr*,struct pf_addr*,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct pf_addr*,struct pf_addr*,struct pf_addr*,int /*<<< orphan*/ *,int const) ; 
 struct pf_addr* FUNC5 (union sockaddr_union*,int const) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  pfr_ffaddr ; 
 struct pfr_kentry* FUNC7 (struct pfr_ktable*,int,int const) ; 
 int /*<<< orphan*/  FUNC8 (union sockaddr_union*,int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (union sockaddr_union*,int /*<<< orphan*/ *) ; 

int
FUNC10(struct pfr_ktable *kt, int *pidx, struct pf_addr *counter,
    sa_family_t af)
{
	struct pf_addr		 *addr, *cur, *mask;
	union sockaddr_union	 uaddr, umask;
	struct pfr_kentry	*ke, *ke2 = NULL;
	int			 idx = -1, use_counter = 0;

	switch (af) {
	case AF_INET:
		uaddr.sin.sin_len = sizeof(struct sockaddr_in);
		uaddr.sin.sin_family = AF_INET;
		break;
	case AF_INET6:
		uaddr.sin6.sin6_len = sizeof(struct sockaddr_in6);
		uaddr.sin6.sin6_family = AF_INET6;
		break;
	}
	addr = FUNC5(&uaddr, af);

	if (!(kt->pfrkt_flags & PFR_TFLAG_ACTIVE) && kt->pfrkt_root != NULL)
		kt = kt->pfrkt_root;
	if (!(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
		return (-1);

	if (pidx != NULL)
		idx = *pidx;
	if (counter != NULL && idx >= 0)
		use_counter = 1;
	if (idx < 0)
		idx = 0;

_next_block:
	ke = FUNC7(kt, idx, af);
	if (ke == NULL) {
		FUNC6(kt->pfrkt_nomatch, 1);
		return (1);
	}
	FUNC8(&umask, af, ke->pfrke_net);
	cur = FUNC5(&ke->pfrke_sa, af);
	mask = FUNC5(&umask, af);

	if (use_counter) {
		/* is supplied address within block? */
		if (!FUNC3(0, cur, mask, counter, af)) {
			/* no, go to next block in table */
			idx++;
			use_counter = 0;
			goto _next_block;
		}
		FUNC1(addr, counter, af);
	} else {
		/* use first address of block */
		FUNC1(addr, cur, af);
	}

	if (!FUNC0(ke)) {
		/* this is a single IP address - no possible nested block */
		FUNC1(counter, addr, af);
		*pidx = idx;
		FUNC6(kt->pfrkt_match, 1);
		return (0);
	}
	for (;;) {
		/* we don't want to use a nested block */
		switch (af) {
		case AF_INET:
			ke2 = (struct pfr_kentry *)FUNC9(&uaddr,
			    &kt->pfrkt_ip4->rh);
			break;
		case AF_INET6:
			ke2 = (struct pfr_kentry *)FUNC9(&uaddr,
			    &kt->pfrkt_ip6->rh);
			break;
		}
		/* no need to check KENTRY_RNF_ROOT() here */
		if (ke2 == ke) {
			/* lookup return the same block - perfect */
			FUNC1(counter, addr, af);
			*pidx = idx;
			FUNC6(kt->pfrkt_match, 1);
			return (0);
		}

		/* we need to increase the counter past the nested block */
		FUNC8(&umask, AF_INET, ke2->pfrke_net);
		FUNC4(addr, addr, FUNC5(&umask, af), &pfr_ffaddr, af);
		FUNC2(addr, af);
		if (!FUNC3(0, cur, mask, addr, af)) {
			/* ok, we reached the end of our main block */
			/* go to next block in table */
			idx++;
			use_counter = 0;
			goto _next_block;
		}
	}
}