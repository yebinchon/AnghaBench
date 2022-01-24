#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  sin6_addr; } ;
struct in6_ifaddr {int ia6_flags; TYPE_1__ ia_addr; } ;
struct ifnet {int if_flags; int if_drv_flags; int /*<<< orphan*/  if_xname; } ;
struct ifaddr {struct ifnet* ifa_ifp; } ;
struct epoch_tracker {int dummy; } ;
struct dadq {scalar_t__ dad_ns_tcount; scalar_t__ dad_ns_ocount; scalar_t__ dad_count; scalar_t__ dad_ns_icount; scalar_t__ dad_na_icount; scalar_t__ dad_ns_lcount; scalar_t__ dad_loopbackprobe; struct ifaddr* dad_ifa; int /*<<< orphan*/  dad_vnet; } ;
struct TYPE_4__ {int flags; scalar_t__ retrans; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct ifaddr*) ; 
 int IFF_DRV_RUNNING ; 
 int IFF_UP ; 
 int IN6_IFF_DUPLICATED ; 
 int IN6_IFF_TENTATIVE ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int ND6_IFF_IFDISABLED ; 
 TYPE_2__* FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct epoch_tracker) ; 
 int /*<<< orphan*/  FUNC6 (struct epoch_tracker) ; 
 scalar_t__ V_dad_enhanced ; 
 scalar_t__ V_dad_maxtry ; 
 scalar_t__ V_nd6_mmaxtries ; 
 long hz ; 
 char* FUNC7 (struct ifnet*) ; 
 char* FUNC8 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct dadq*) ; 
 int /*<<< orphan*/  FUNC11 (struct ifaddr*,struct dadq*) ; 
 int /*<<< orphan*/  FUNC12 (struct dadq*,long,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC14(struct dadq *dp)
{
	FUNC1(dp->dad_vnet);
	struct ifaddr *ifa = dp->dad_ifa;
	struct ifnet *ifp = dp->dad_ifa->ifa_ifp;
	struct in6_ifaddr *ia = (struct in6_ifaddr *)ifa;
	char ip6buf[INET6_ADDRSTRLEN];
	struct epoch_tracker et;

	FUNC3(ia != NULL, ("DAD entry %p with no address", dp));

	FUNC5(et);
	if (FUNC4(ifp)->flags & ND6_IFF_IFDISABLED) {
		/* Do not need DAD for ifdisabled interface. */
		FUNC9(LOG_ERR, "nd6_dad_timer: cancel DAD on %s because of "
		    "ND6_IFF_IFDISABLED.\n", ifp->if_xname);
		goto err;
	}
	if (ia->ia6_flags & IN6_IFF_DUPLICATED) {
		FUNC9(LOG_ERR, "nd6_dad_timer: called with duplicated address "
			"%s(%s)\n",
			FUNC8(ip6buf, &ia->ia_addr.sin6_addr),
			ifa->ifa_ifp ? FUNC7(ifa->ifa_ifp) : "???");
		goto err;
	}
	if ((ia->ia6_flags & IN6_IFF_TENTATIVE) == 0) {
		FUNC9(LOG_ERR, "nd6_dad_timer: called with non-tentative address "
			"%s(%s)\n",
			FUNC8(ip6buf, &ia->ia_addr.sin6_addr),
			ifa->ifa_ifp ? FUNC7(ifa->ifa_ifp) : "???");
		goto err;
	}

	/* Stop DAD if the interface is down even after dad_maxtry attempts. */
	if ((dp->dad_ns_tcount > V_dad_maxtry) &&
	    (((ifp->if_flags & IFF_UP) == 0) ||
	     ((ifp->if_drv_flags & IFF_DRV_RUNNING) == 0))) {
		FUNC13((LOG_INFO, "%s: could not run DAD "
		    "because the interface was down or not running.\n",
		    FUNC7(ifa->ifa_ifp)));
		goto err;
	}

	/* Need more checks? */
	if (dp->dad_ns_ocount < dp->dad_count) {
		/*
		 * We have more NS to go.  Send NS packet for DAD.
		 */
		FUNC12(dp,
		    (long)FUNC4(ifa->ifa_ifp)->retrans * hz / 1000, 1);
		goto done;
	} else {
		/*
		 * We have transmitted sufficient number of DAD packets.
		 * See what we've got.
		 */
		if (dp->dad_ns_icount > 0 || dp->dad_na_icount > 0)
			/* We've seen NS or NA, means DAD has failed. */
			FUNC11(ifa, dp);
		else if (V_dad_enhanced != 0 &&
		    dp->dad_ns_lcount > 0 &&
		    dp->dad_ns_lcount > dp->dad_loopbackprobe) {
			/*
			 * Sec. 4.1 in RFC 7527 requires transmission of
			 * additional probes until the loopback condition
			 * becomes clear when a looped back probe is detected.
			 */
			FUNC9(LOG_ERR, "%s: a looped back NS message is "
			    "detected during DAD for %s.  "
			    "Another DAD probes are being sent.\n",
			    FUNC7(ifa->ifa_ifp),
			    FUNC8(ip6buf, FUNC2(ifa)));
			dp->dad_loopbackprobe = dp->dad_ns_lcount;
			/*
			 * Send an NS immediately and increase dad_count by
			 * V_nd6_mmaxtries - 1.
			 */
			dp->dad_count =
			    dp->dad_ns_ocount + V_nd6_mmaxtries - 1;
			FUNC12(dp,
			    (long)FUNC4(ifa->ifa_ifp)->retrans * hz / 1000,
			    1);
			goto done;
		} else {
			/*
			 * We are done with DAD.  No NA came, no NS came.
			 * No duplicate address found.  Check IFDISABLED flag
			 * again in case that it is changed between the
			 * beginning of this function and here.
			 */
			if ((FUNC4(ifp)->flags & ND6_IFF_IFDISABLED) == 0)
				ia->ia6_flags &= ~IN6_IFF_TENTATIVE;

			FUNC13((LOG_DEBUG,
			    "%s: DAD complete for %s - no duplicates found\n",
			    FUNC7(ifa->ifa_ifp),
			    FUNC8(ip6buf, &ia->ia_addr.sin6_addr)));
			if (dp->dad_ns_lcount > 0)
				FUNC9(LOG_ERR, "%s: DAD completed while "
				    "a looped back NS message is detected "
				    "during DAD for %s.\n",
				    FUNC7(ifa->ifa_ifp),
				    FUNC8(ip6buf, FUNC2(ifa)));
		}
	}
err:
	FUNC10(dp);
done:
	FUNC6(et);
	FUNC0();
}