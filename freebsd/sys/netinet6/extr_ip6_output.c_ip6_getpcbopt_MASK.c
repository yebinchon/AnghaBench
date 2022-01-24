#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct sockopt {int dummy; } ;
struct ip6_pktopts {int ip6po_tclass; int ip6po_minmtu; int ip6po_flags; int ip6po_prefer_tempaddr; int /*<<< orphan*/  ip6po_pktinfo; } ;
struct inpcb {struct ip6_pktopts* in6p_outputopts; } ;
struct in6_pktinfo {int /*<<< orphan*/  ipi6_addr; } ;
typedef  int /*<<< orphan*/  on ;
typedef  int /*<<< orphan*/  null_pktinfo ;

/* Variables and functions */
 int ENOPROTOOPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct inpcb*) ; 
 int /*<<< orphan*/  FUNC3 (struct inpcb*) ; 
 int IP6PO_DONTFRAG ; 
 int IP6PO_MINMTU_MCASTONLY ; 
 int IP6PO_TEMPADDR_SYSTEM ; 
#define  IPV6_DONTFRAG 137 
#define  IPV6_DSTOPTS 136 
#define  IPV6_HOPOPTS 135 
#define  IPV6_NEXTHOP 134 
#define  IPV6_PKTINFO 133 
#define  IPV6_PREFER_TEMPADDR 132 
#define  IPV6_RTHDR 131 
#define  IPV6_RTHDRDSTOPTS 130 
#define  IPV6_TCLASS 129 
#define  IPV6_USE_MIN_MTU 128 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct in6_pktinfo*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct in6_pktinfo*,int) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ip6po_dest1 ; 
 int /*<<< orphan*/  ip6po_dest2 ; 
 int /*<<< orphan*/  ip6po_hbh ; 
 int /*<<< orphan*/  ip6po_nexthop ; 
 int /*<<< orphan*/  ip6po_rthdr ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (struct sockopt*,void*,int) ; 

__attribute__((used)) static int
FUNC10(struct inpcb *inp, int optname, struct sockopt *sopt)
{
	void *optdata = NULL;
	bool malloc_optdata = false;
	int optdatalen = 0;
	int error = 0;
	struct in6_pktinfo null_pktinfo;
	int deftclass = 0, on;
	int defminmtu = IP6PO_MINMTU_MCASTONLY;
	int defpreftemp = IP6PO_TEMPADDR_SYSTEM;
	struct ip6_pktopts *pktopt;

	FUNC2(inp);
	pktopt = inp->in6p_outputopts;

	switch (optname) {
	case IPV6_PKTINFO:
		optdata = (void *)&null_pktinfo;
		if (pktopt && pktopt->ip6po_pktinfo) {
			FUNC4(pktopt->ip6po_pktinfo, &null_pktinfo,
			    sizeof(null_pktinfo));
			FUNC7(&null_pktinfo.ipi6_addr);
		} else {
			/* XXX: we don't have to do this every time... */
			FUNC5(&null_pktinfo, sizeof(null_pktinfo));
		}
		optdatalen = sizeof(struct in6_pktinfo);
		break;
	case IPV6_TCLASS:
		if (pktopt && pktopt->ip6po_tclass >= 0)
			deftclass = pktopt->ip6po_tclass;
		optdata = (void *)&deftclass;
		optdatalen = sizeof(int);
		break;
	case IPV6_HOPOPTS:
		FUNC0(ip6po_hbh);
		break;
	case IPV6_RTHDR:
		FUNC0(ip6po_rthdr);
		break;
	case IPV6_RTHDRDSTOPTS:
		FUNC0(ip6po_dest1);
		break;
	case IPV6_DSTOPTS:
		FUNC0(ip6po_dest2);
		break;
	case IPV6_NEXTHOP:
		FUNC1(ip6po_nexthop);
		break;
	case IPV6_USE_MIN_MTU:
		if (pktopt)
			defminmtu = pktopt->ip6po_minmtu;
		optdata = (void *)&defminmtu;
		optdatalen = sizeof(int);
		break;
	case IPV6_DONTFRAG:
		if (pktopt && ((pktopt->ip6po_flags) & IP6PO_DONTFRAG))
			on = 1;
		else
			on = 0;
		optdata = (void *)&on;
		optdatalen = sizeof(on);
		break;
	case IPV6_PREFER_TEMPADDR:
		if (pktopt)
			defpreftemp = pktopt->ip6po_prefer_tempaddr;
		optdata = (void *)&defpreftemp;
		optdatalen = sizeof(int);
		break;
	default:		/* should not happen */
#ifdef DIAGNOSTIC
		panic("ip6_getpcbopt: unexpected option\n");
#endif
		FUNC3(inp);
		return (ENOPROTOOPT);
	}
	FUNC3(inp);

	error = FUNC9(sopt, optdata, optdatalen);
	if (malloc_optdata)
		FUNC6(optdata, M_TEMP);

	return (error);
}