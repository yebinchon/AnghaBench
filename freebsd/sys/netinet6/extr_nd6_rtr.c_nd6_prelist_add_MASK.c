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
struct TYPE_2__ {int /*<<< orphan*/  sin6_addr; } ;
struct nd_prefixctl {int /*<<< orphan*/  ndpr_ifp; int /*<<< orphan*/  ndpr_plen; TYPE_1__ ndpr_prefix; int /*<<< orphan*/  ndpr_flags; int /*<<< orphan*/  ndpr_pltime; int /*<<< orphan*/  ndpr_vltime; } ;
struct nd_prefix {scalar_t__ ndpr_raf_onlink; int /*<<< orphan*/  ndpr_mask; TYPE_1__ ndpr_prefix; int /*<<< orphan*/  ndpr_plen; int /*<<< orphan*/  ndpr_advrtrs; int /*<<< orphan*/  ndpr_lastupdate; int /*<<< orphan*/  ndpr_flags; int /*<<< orphan*/  ndpr_pltime; int /*<<< orphan*/  ndpr_vltime; int /*<<< orphan*/  ndpr_ifp; int /*<<< orphan*/  ndpr_refcnt; } ;
struct nd_defrouter {int dummy; } ;
struct epoch_tracker {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct nd_prefix*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  M_IP6NDP ; 
 int M_NOWAIT ; 
 int M_ZERO ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC8 (struct epoch_tracker) ; 
 int /*<<< orphan*/  V_nd6_list_genid ; 
 int /*<<< orphan*/  V_nd_prefix ; 
 int /*<<< orphan*/  FUNC9 (struct nd_prefix*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *) ; 
 struct nd_prefix* FUNC14 (int,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (struct nd_prefix*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ndpr_entry ; 
 int /*<<< orphan*/  FUNC17 (struct nd_prefix*,struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  time_uptime ; 

int
FUNC19(struct nd_prefixctl *pr, struct nd_defrouter *dr,
    struct nd_prefix **newp)
{
	struct nd_prefix *new;
	char ip6buf[INET6_ADDRSTRLEN];
	int error;

	new = FUNC14(sizeof(*new), M_IP6NDP, M_NOWAIT | M_ZERO);
	if (new == NULL)
		return (ENOMEM);
	FUNC18(&new->ndpr_refcnt, newp != NULL ? 2 : 1);
	new->ndpr_ifp = pr->ndpr_ifp;
	new->ndpr_prefix = pr->ndpr_prefix;
	new->ndpr_plen = pr->ndpr_plen;
	new->ndpr_vltime = pr->ndpr_vltime;
	new->ndpr_pltime = pr->ndpr_pltime;
	new->ndpr_flags = pr->ndpr_flags;
	if ((error = FUNC11(new)) != 0) {
		FUNC9(new, M_IP6NDP);
		return (error);
	}
	new->ndpr_lastupdate = time_uptime;

	/* initialization */
	FUNC1(&new->ndpr_advrtrs);
	FUNC12(&new->ndpr_mask, new->ndpr_plen);
	/* make prefix in the canonical form */
	FUNC0(&new->ndpr_prefix.sin6_addr, &new->ndpr_mask);

	FUNC5();
	FUNC2(&V_nd_prefix, new, ndpr_entry);
	V_nd6_list_genid++;
	FUNC6();

	/* ND_OPT_PI_FLAG_ONLINK processing */
	if (new->ndpr_raf_onlink) {
		struct epoch_tracker et;

		FUNC3();
		FUNC7(et);
		if ((error = FUNC15(new)) != 0) {
			FUNC16((LOG_ERR, "nd6_prelist_add: failed to make "
			    "the prefix %s/%d on-link on %s (errno=%d)\n",
			    FUNC13(ip6buf, &pr->ndpr_prefix.sin6_addr),
			    pr->ndpr_plen, FUNC10(pr->ndpr_ifp), error));
			/* proceed anyway. XXX: is it correct? */
		}
		FUNC8(et);
		FUNC4();
	}

	if (dr != NULL)
		FUNC17(new, dr);
	if (newp != NULL)
		*newp = new;
	return (0);
}