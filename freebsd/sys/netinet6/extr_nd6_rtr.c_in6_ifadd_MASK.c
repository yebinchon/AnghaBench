#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  sin6_addr; } ;
struct nd_prefixctl {int ndpr_plen; int /*<<< orphan*/  ndpr_pltime; int /*<<< orphan*/  ndpr_vltime; TYPE_2__ ndpr_prefix; struct ifnet* ndpr_ifp; } ;
struct TYPE_12__ {int* s6_addr32; } ;
struct TYPE_13__ {TYPE_3__ sin6_addr; } ;
struct TYPE_10__ {int /*<<< orphan*/  sin6_addr; } ;
struct in6_ifaddr {TYPE_4__ ia_addr; TYPE_1__ ia_prefixmask; } ;
struct TYPE_16__ {int* s6_addr32; } ;
struct TYPE_15__ {TYPE_7__ sin6_addr; } ;
struct TYPE_14__ {int /*<<< orphan*/  ia6t_pltime; int /*<<< orphan*/  ia6t_vltime; } ;
struct in6_aliasreq {TYPE_6__ ifra_addr; int /*<<< orphan*/  ifra_flags; TYPE_5__ ifra_lifetime; } ;
struct in6_addr {int* s6_addr32; } ;
struct ifnet {int dummy; } ;
struct ifaddr {int dummy; } ;

/* Variables and functions */
 int IN6_IFAUPDATE_DADDELAY ; 
 int /*<<< orphan*/  IN6_IFF_AUTOCONF ; 
 int /*<<< orphan*/  FUNC0 (TYPE_7__*,struct in6_addr*) ; 
 int INET6_ADDRSTRLEN ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifaddr*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct in6_addr*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_aliasreq*,int /*<<< orphan*/ *,struct in6_addr*) ; 
 int FUNC6 (struct ifnet*,struct in6_aliasreq*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (struct ifnet*,int /*<<< orphan*/ ) ; 
 struct in6_ifaddr* FUNC8 (struct ifnet*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct in6_ifaddr *
FUNC12(struct nd_prefixctl *pr, int mcast)
{
	struct ifnet *ifp = pr->ndpr_ifp;
	struct ifaddr *ifa;
	struct in6_aliasreq ifra;
	struct in6_ifaddr *ia, *ib;
	int error, plen0;
	struct in6_addr mask;
	int prefixlen = pr->ndpr_plen;
	int updateflags;
	char ip6buf[INET6_ADDRSTRLEN];

	FUNC4(&mask, prefixlen);

	/*
	 * find a link-local address (will be interface ID).
	 * Is it really mandatory? Theoretically, a global or a site-local
	 * address can be configured without a link-local address, if we
	 * have a unique interface identifier...
	 *
	 * it is not mandatory to have a link-local address, we can generate
	 * interface identifier on the fly.  we do this because:
	 * (1) it should be the easiest way to find interface identifier.
	 * (2) RFC2462 5.4 suggesting the use of the same interface identifier
	 * for multiple addresses on a single interface, and possible shortcut
	 * of DAD.  we omitted DAD for this reason in the past.
	 * (3) a user can prevent autoconfiguration of global address
	 * by removing link-local address by hand (this is partly because we
	 * don't have other way to control the use of IPv6 on an interface.
	 * this has been our design choice - cf. NRL's "ifconfig auto").
	 * (4) it is easier to manage when an interface has addresses
	 * with the same interface identifier, than to have multiple addresses
	 * with different interface identifiers.
	 */
	ifa = (struct ifaddr *)FUNC7(ifp, 0); /* 0 is OK? */
	if (ifa)
		ib = (struct in6_ifaddr *)ifa;
	else
		return NULL;

	/* prefixlen + ifidlen must be equal to 128 */
	plen0 = FUNC3(&ib->ia_prefixmask.sin6_addr, NULL);
	if (prefixlen != plen0) {
		FUNC2(ifa);
		FUNC11((LOG_INFO, "in6_ifadd: wrong prefixlen for %s "
		    "(prefix=%d ifid=%d)\n",
		    FUNC1(ifp), prefixlen, 128 - plen0));
		return NULL;
	}

	/* make ifaddr */
	FUNC5(&ifra, &pr->ndpr_prefix.sin6_addr, &mask);

	FUNC0(&ifra.ifra_addr.sin6_addr, &mask);
	/* interface ID */
	ifra.ifra_addr.sin6_addr.s6_addr32[0] |=
	    (ib->ia_addr.sin6_addr.s6_addr32[0] & ~mask.s6_addr32[0]);
	ifra.ifra_addr.sin6_addr.s6_addr32[1] |=
	    (ib->ia_addr.sin6_addr.s6_addr32[1] & ~mask.s6_addr32[1]);
	ifra.ifra_addr.sin6_addr.s6_addr32[2] |=
	    (ib->ia_addr.sin6_addr.s6_addr32[2] & ~mask.s6_addr32[2]);
	ifra.ifra_addr.sin6_addr.s6_addr32[3] |=
	    (ib->ia_addr.sin6_addr.s6_addr32[3] & ~mask.s6_addr32[3]);
	FUNC2(ifa);

	/* lifetimes. */
	ifra.ifra_lifetime.ia6t_vltime = pr->ndpr_vltime;
	ifra.ifra_lifetime.ia6t_pltime = pr->ndpr_pltime;

	/* XXX: scope zone ID? */

	ifra.ifra_flags |= IN6_IFF_AUTOCONF; /* obey autoconf */

	/*
	 * Make sure that we do not have this address already.  This should
	 * usually not happen, but we can still see this case, e.g., if we
	 * have manually configured the exact address to be configured.
	 */
	ifa = (struct ifaddr *)FUNC8(ifp,
	    &ifra.ifra_addr.sin6_addr);
	if (ifa != NULL) {
		FUNC2(ifa);
		/* this should be rare enough to make an explicit log */
		FUNC10(LOG_INFO, "in6_ifadd: %s is already configured\n",
		    FUNC9(ip6buf, &ifra.ifra_addr.sin6_addr));
		return (NULL);
	}

	/*
	 * Allocate ifaddr structure, link into chain, etc.
	 * If we are going to create a new address upon receiving a multicasted
	 * RA, we need to impose a random delay before starting DAD.
	 * [draft-ietf-ipv6-rfc2462bis-02.txt, Section 5.4.2]
	 */
	updateflags = 0;
	if (mcast)
		updateflags |= IN6_IFAUPDATE_DADDELAY;
	if ((error = FUNC6(ifp, &ifra, NULL, updateflags)) != 0) {
		FUNC11((LOG_ERR,
		    "in6_ifadd: failed to make ifaddr %s on %s (errno=%d)\n",
		    FUNC9(ip6buf, &ifra.ifra_addr.sin6_addr),
		    FUNC1(ifp), error));
		return (NULL);	/* ifaddr must not have been allocated. */
	}

	ia = FUNC8(ifp, &ifra.ifra_addr.sin6_addr);
	/*
	 * XXXRW: Assumption of non-NULLness here might not be true with
	 * fine-grained locking -- should we validate it?  Or just return
	 * earlier ifa rather than looking it up again?
	 */
	return (ia);		/* this is always non-NULL  and referenced. */
}