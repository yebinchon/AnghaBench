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
struct timeval {scalar_t__ tv_sec; } ;
struct sockaddr_in6 {int /*<<< orphan*/  sin6_addr; int /*<<< orphan*/  sin6_len; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {scalar_t__ autonomous; scalar_t__ onlink; } ;
struct TYPE_3__ {int /*<<< orphan*/  sin6_len; } ;
struct in6_prefix {size_t advrtrs; int prefixlen; int flags; scalar_t__ vltime; scalar_t__ pltime; scalar_t__ expire; int refcnt; int /*<<< orphan*/  if_index; TYPE_2__ raflags; TYPE_1__ prefix; } ;
struct in6_nbrinfo {int state; } ;
typedef  int /*<<< orphan*/  namebuf ;
typedef  int /*<<< orphan*/  mib ;

/* Variables and functions */
 int CTL_NET ; 
 int ICMPV6CTL_ND6_PRLIST ; 
 int IPPROTO_ICMPV6 ; 
 scalar_t__ ND6_INFINITE_LIFETIME ; 
#define  ND6_LLINFO_DELAY 131 
#define  ND6_LLINFO_PROBE 130 
#define  ND6_LLINFO_REACHABLE 129 
#define  ND6_LLINFO_STALE 128 
 int NDPRF_DETACHED ; 
 int NDPRF_HOME ; 
 int NDPRF_ONLINK ; 
 int NI_MAXHOST ; 
 void* NI_NUMERICHOST ; 
 int PF_INET6 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct sockaddr*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 struct in6_nbrinfo* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct timeval*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ifix_buf ; 
 char* FUNC6 (size_t) ; 
 scalar_t__ nflag ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 scalar_t__ FUNC10 (int*,int,char*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC11()
{
	int mib[] = { CTL_NET, PF_INET6, IPPROTO_ICMPV6, ICMPV6CTL_ND6_PRLIST };
	char *buf;
	struct in6_prefix *p, *ep, *n;
	struct sockaddr_in6 *advrtr;
	size_t l;
	struct timeval now;
	const int niflags = NI_NUMERICHOST;
	int ninflags = nflag ? NI_NUMERICHOST : 0;
	char namebuf[NI_MAXHOST];

	if (FUNC10(mib, sizeof(mib) / sizeof(mib[0]), NULL, &l, NULL, 0) < 0) {
		FUNC0(1, "sysctl(ICMPV6CTL_ND6_PRLIST)");
		/*NOTREACHED*/
	}
	buf = FUNC6(l);
	if (!buf) {
		FUNC0(1, "malloc");
		/*NOTREACHED*/
	}
	if (FUNC10(mib, sizeof(mib) / sizeof(mib[0]), buf, &l, NULL, 0) < 0) {
		FUNC0(1, "sysctl(ICMPV6CTL_ND6_PRLIST)");
		/*NOTREACHED*/
	}

	ep = (struct in6_prefix *)(buf + l);
	for (p = (struct in6_prefix *)buf; p < ep; p = n) {
		advrtr = (struct sockaddr_in6 *)(p + 1);
		n = (struct in6_prefix *)&advrtr[p->advrtrs];

		if (FUNC2((struct sockaddr *)&p->prefix,
		    p->prefix.sin6_len, namebuf, sizeof(namebuf),
		    NULL, 0, niflags) != 0)
			FUNC9(namebuf, "?", sizeof(namebuf));
		FUNC7("%s/%d if=%s\n", namebuf, p->prefixlen,
		    FUNC5(p->if_index, ifix_buf));

		FUNC4(&now, 0);
		/*
		 * meaning of fields, especially flags, is very different
		 * by origin.  notify the difference to the users.
		 */
		FUNC7("flags=%s%s%s%s%s",
		    p->raflags.onlink ? "L" : "",
		    p->raflags.autonomous ? "A" : "",
		    (p->flags & NDPRF_ONLINK) != 0 ? "O" : "",
		    (p->flags & NDPRF_DETACHED) != 0 ? "D" : "",
#ifdef NDPRF_HOME
		    (p->flags & NDPRF_HOME) != 0 ? "H" : ""
#else
		    ""
#endif
		    );
		if (p->vltime == ND6_INFINITE_LIFETIME)
			FUNC7(" vltime=infinity");
		else
			FUNC7(" vltime=%lu", (unsigned long)p->vltime);
		if (p->pltime == ND6_INFINITE_LIFETIME)
			FUNC7(", pltime=infinity");
		else
			FUNC7(", pltime=%lu", (unsigned long)p->pltime);
		if (p->expire == 0)
			FUNC7(", expire=Never");
		else if (p->expire >= now.tv_sec)
			FUNC7(", expire=%s",
			    FUNC8(p->expire - now.tv_sec));
		else
			FUNC7(", expired");
		FUNC7(", ref=%d", p->refcnt);
		FUNC7("\n");
		/*
		 * "advertising router" list is meaningful only if the prefix
		 * information is from RA.
		 */
		if (p->advrtrs) {
			int j;
			struct sockaddr_in6 *sin6;

			sin6 = advrtr;
			FUNC7("  advertised by\n");
			for (j = 0; j < p->advrtrs; j++) {
				struct in6_nbrinfo *nbi;

				if (FUNC2((struct sockaddr *)sin6,
				    sin6->sin6_len, namebuf, sizeof(namebuf),
				    NULL, 0, ninflags) != 0)
					FUNC9(namebuf, "?", sizeof(namebuf));
				FUNC7("    %s", namebuf);

				nbi = FUNC3(&sin6->sin6_addr,
				    p->if_index, 0);
				if (nbi) {
					switch (nbi->state) {
					case ND6_LLINFO_REACHABLE:
					case ND6_LLINFO_STALE:
					case ND6_LLINFO_DELAY:
					case ND6_LLINFO_PROBE:
						FUNC7(" (reachable)\n");
						break;
					default:
						FUNC7(" (unreachable)\n");
					}
				} else
					FUNC7(" (no neighbor state)\n");
				sin6++;
			}
		} else
			FUNC7("  No advertising router\n");
	}
	FUNC1(buf);
}