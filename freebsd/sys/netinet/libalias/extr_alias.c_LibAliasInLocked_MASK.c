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
struct libalias {int packetAliasMode; } ;
struct in_addr {int dummy; } ;
struct ip {int ip_hl; int ip_p; int /*<<< orphan*/  ip_sum; int /*<<< orphan*/  ip_id; struct in_addr ip_dst; int /*<<< orphan*/  ip_src; int /*<<< orphan*/  ip_off; int /*<<< orphan*/  ip_len; } ;
struct alias_link {int dummy; } ;
struct alias_data {int /*<<< orphan*/  maxpktsize; int /*<<< orphan*/ * dport; int /*<<< orphan*/ * sport; int /*<<< orphan*/ * aport; int /*<<< orphan*/ * aaddr; int /*<<< orphan*/ * oaddr; int /*<<< orphan*/ * lnk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 struct alias_link* FUNC1 (struct libalias*,int /*<<< orphan*/ ,struct in_addr,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct libalias*,int /*<<< orphan*/ ,struct in_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct libalias*) ; 
 int /*<<< orphan*/  IN ; 
 int /*<<< orphan*/  IP ; 
#define  IPPROTO_GRE 132 
#define  IPPROTO_ICMP 131 
#define  IPPROTO_SCTP 130 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int IP_MF ; 
 int IP_OFFMASK ; 
 int FUNC4 (struct libalias*,struct ip*) ; 
 int FUNC5 (struct libalias*,char*,int,int) ; 
 int PKT_ALIAS_ERROR ; 
 int PKT_ALIAS_FOUND_HEADER_FRAGMENT ; 
 int PKT_ALIAS_IGNORED ; 
 int PKT_ALIAS_OK ; 
 int PKT_ALIAS_REVERSE ; 
 int FUNC6 (struct libalias*,int /*<<< orphan*/ ,struct in_addr*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SN_TO_LOCAL ; 
 int FUNC7 (struct libalias*,struct ip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct alias_link*,struct in_addr) ; 
 int FUNC9 (struct libalias*,struct ip*) ; 
 int FUNC10 (struct libalias*,struct ip*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct libalias*,struct ip*,struct alias_data*) ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC13(struct libalias *la, char *ptr, int maxpacketsize)
{
	struct in_addr alias_addr;
	struct ip *pip;
	int iresult;

	if (la->packetAliasMode & PKT_ALIAS_REVERSE) {
		la->packetAliasMode &= ~PKT_ALIAS_REVERSE;
		iresult = FUNC5(la, ptr, maxpacketsize, 1);
		la->packetAliasMode |= PKT_ALIAS_REVERSE;
		goto getout;
	}
	FUNC3(la);
	FUNC0(la);
	pip = (struct ip *)ptr;
	alias_addr = pip->ip_dst;

	/* Defense against mangled packets */
	if (FUNC12(pip->ip_len) > maxpacketsize
	    || (pip->ip_hl << 2) > maxpacketsize) {
		iresult = PKT_ALIAS_IGNORED; 
		goto getout;
	}

	iresult = PKT_ALIAS_IGNORED;
	if ((FUNC12(pip->ip_off) & IP_OFFMASK) == 0) {
		switch (pip->ip_p) {
		case IPPROTO_ICMP:
			iresult = FUNC4(la, pip);
			break;
		case IPPROTO_UDP:
			iresult = FUNC10(la, pip);
			break;
		case IPPROTO_TCP:
			iresult = FUNC9(la, pip);
			break;
#ifdef _KERNEL
		case IPPROTO_SCTP:
		  iresult = SctpAlias(la, pip, SN_TO_LOCAL);
			break;
#endif
 		case IPPROTO_GRE: {
			int error;
			struct alias_data ad = {
				.lnk = NULL, 
				.oaddr = NULL, 
				.aaddr = NULL,
				.aport = NULL,
				.sport = NULL,
				.dport = NULL,
				.maxpktsize = 0                  
			};
			
			/* Walk out chain. */		
			error = FUNC11(IN, IP, la, pip, &ad);
			if (error ==  0)
				iresult = PKT_ALIAS_OK;
			else
				iresult = FUNC6(la, pip->ip_src, 
				    &pip->ip_dst, pip->ip_p, &pip->ip_sum);
		}
 			break; 
		default:
			iresult = FUNC6(la, pip->ip_src, &pip->ip_dst,
			    pip->ip_p, &pip->ip_sum);
			break;
		}

		if (FUNC12(pip->ip_off) & IP_MF) {
			struct alias_link *lnk;

			lnk = FUNC1(la, pip->ip_src, alias_addr, pip->ip_id);
			if (lnk != NULL) {
				iresult = PKT_ALIAS_FOUND_HEADER_FRAGMENT;
				FUNC8(lnk, pip->ip_dst);
			} else {
				iresult = PKT_ALIAS_ERROR;
			}
		}
	} else {
		iresult = FUNC2(la, pip->ip_src, &pip->ip_dst, pip->ip_id,
		    &pip->ip_sum);
	}

getout:
	return (iresult);
}