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
struct timespec {long tv_sec; } ;
struct prefix {int pfx_prefixlen; int pfx_origin; scalar_t__ pfx_validlifetime; scalar_t__ pfx_vltimeexpire; scalar_t__ pfx_preflifetime; scalar_t__ pfx_pltimeexpire; scalar_t__ pfx_timer; scalar_t__ pfx_autoconfflg; scalar_t__ pfx_onlinkflg; int /*<<< orphan*/  pfx_prefix; } ;
typedef  int /*<<< orphan*/  ntopbuf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET6 ; 
 int /*<<< orphan*/  CLOCK_MONOTONIC_FAST ; 
 int INET6_ADDRSTRLEN ; 
 scalar_t__ ND6_INFINITE_LIFETIME ; 
#define  PREFIX_FROM_CONFIG 130 
#define  PREFIX_FROM_DYNAMIC 129 
#define  PREFIX_FROM_KERNEL 128 
 int SSBUFLEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct timespec*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 struct timespec* FUNC3 (scalar_t__) ; 
 char* FUNC4 (scalar_t__,char*) ; 

__attribute__((used)) static int
FUNC5(struct prefix *pfx)
{
	char ntopbuf[INET6_ADDRSTRLEN];
	char ssbuf[SSBUFLEN];
	struct timespec now;

	FUNC0(CLOCK_MONOTONIC_FAST, &now);
	FUNC2("\t  %s/%d", FUNC1(AF_INET6, &pfx->pfx_prefix,
		ntopbuf, sizeof(ntopbuf)), pfx->pfx_prefixlen);

	FUNC2(" (");
	switch (pfx->pfx_origin) {
	case PREFIX_FROM_KERNEL:
		FUNC2("KERNEL");
		break;
	case PREFIX_FROM_CONFIG:
		FUNC2("CONFIG");
		break;
	case PREFIX_FROM_DYNAMIC:
		FUNC2("DYNAMIC");
		break;
	}

	FUNC2(",");

	FUNC2(" vltime=%s",
	    (pfx->pfx_validlifetime == ND6_INFINITE_LIFETIME) ?
	    "infinity" : FUNC4(pfx->pfx_validlifetime, ssbuf));

	if (pfx->pfx_vltimeexpire > 0)
		FUNC2("(expire: %s)",
		    ((long)pfx->pfx_vltimeexpire > now.tv_sec) ?
		    FUNC4(pfx->pfx_vltimeexpire - now.tv_sec, ssbuf) :
		    "0");

	FUNC2(",");

	FUNC2(" pltime=%s",
	    (pfx->pfx_preflifetime == ND6_INFINITE_LIFETIME) ?
	    "infinity" : FUNC4(pfx->pfx_preflifetime, ssbuf));

	if (pfx->pfx_pltimeexpire > 0)
		FUNC2("(expire %s)",
		    ((long)pfx->pfx_pltimeexpire > now.tv_sec) ?
		    FUNC4(pfx->pfx_pltimeexpire - now.tv_sec, ssbuf) :
		    "0");

	FUNC2(",");

	FUNC2(" flags=");
	if (pfx->pfx_onlinkflg || pfx->pfx_autoconfflg) {
		FUNC2("%s", pfx->pfx_onlinkflg ? "L" : "");
		FUNC2("%s", pfx->pfx_autoconfflg ? "A" : "");
	} else
		FUNC2("<none>");

	if (pfx->pfx_timer) {
		struct timespec *rest;

		rest = FUNC3(pfx->pfx_timer);
		if (rest) { /* XXX: what if not? */
			FUNC2(" expire=%s", FUNC4(rest->tv_sec, ssbuf));
		}
	}

	FUNC2(")\n");

	return (0);
}