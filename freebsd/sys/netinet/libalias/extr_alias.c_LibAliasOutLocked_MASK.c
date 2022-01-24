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
typedef  scalar_t__ u_long ;
struct libalias {int packetAliasMode; } ;
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct ip {int ip_hl; int ip_p; int /*<<< orphan*/  ip_sum; struct in_addr ip_src; int /*<<< orphan*/  ip_dst; int /*<<< orphan*/  ip_off; int /*<<< orphan*/  ip_len; } ;
struct alias_data {int /*<<< orphan*/  maxpktsize; int /*<<< orphan*/ * dport; int /*<<< orphan*/ * sport; int /*<<< orphan*/ * aport; int /*<<< orphan*/ * aaddr; int /*<<< orphan*/ * oaddr; int /*<<< orphan*/ * lnk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct libalias*) ; 
 int FUNC1 (struct libalias*,struct in_addr*,int /*<<< orphan*/ *) ; 
 struct in_addr FUNC2 (struct libalias*) ; 
 int /*<<< orphan*/  FUNC3 (struct libalias*) ; 
 int /*<<< orphan*/  IP ; 
#define  IPPROTO_GRE 132 
#define  IPPROTO_ICMP 131 
#define  IPPROTO_SCTP 130 
#define  IPPROTO_TCP 129 
#define  IPPROTO_UDP 128 
 int IP_OFFMASK ; 
 int FUNC4 (struct libalias*,struct ip*,int) ; 
 int FUNC5 (struct libalias*,char*,int) ; 
 int /*<<< orphan*/  OUT ; 
 int PKT_ALIAS_IGNORED ; 
 int PKT_ALIAS_OK ; 
 int PKT_ALIAS_PROXY_ONLY ; 
 int PKT_ALIAS_REVERSE ; 
 int PKT_ALIAS_UNREGISTERED_ONLY ; 
 int FUNC6 (struct libalias*,struct in_addr*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  SN_TO_GLOBAL ; 
 int FUNC7 (struct libalias*,struct ip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct libalias*,struct in_addr) ; 
 int FUNC9 (struct libalias*,struct ip*,int,int) ; 
 scalar_t__ UNREG_ADDR_A_LOWER ; 
 scalar_t__ UNREG_ADDR_A_UPPER ; 
 scalar_t__ UNREG_ADDR_B_LOWER ; 
 scalar_t__ UNREG_ADDR_B_UPPER ; 
 scalar_t__ UNREG_ADDR_C_LOWER ; 
 scalar_t__ UNREG_ADDR_C_UPPER ; 
 int FUNC10 (struct libalias*,struct ip*,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct libalias*,struct ip*,struct alias_data*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC14(struct libalias *la, char *ptr,	/* valid IP packet */
    int maxpacketsize,		/* How much the packet data may grow (FTP
				 * and IRC inline changes) */
    int create                  /* Create new entries ? */
)
{
	int iresult;
	struct in_addr addr_save;
	struct ip *pip;

	if (la->packetAliasMode & PKT_ALIAS_REVERSE) {
		la->packetAliasMode &= ~PKT_ALIAS_REVERSE;
		iresult = FUNC5(la, ptr, maxpacketsize);
		la->packetAliasMode |= PKT_ALIAS_REVERSE;
		goto getout;
	}
	FUNC3(la);
	FUNC0(la);
	pip = (struct ip *)ptr;

	/* Defense against mangled packets */
	if (FUNC13(pip->ip_len) > maxpacketsize
	    || (pip->ip_hl << 2) > maxpacketsize) {
		iresult = PKT_ALIAS_IGNORED;
		goto getout;
	}

	addr_save = FUNC2(la);
	if (la->packetAliasMode & PKT_ALIAS_UNREGISTERED_ONLY) {
		u_long addr;
		int iclass;

		iclass = 0;
		addr = FUNC12(pip->ip_src.s_addr);
		if (addr >= UNREG_ADDR_C_LOWER && addr <= UNREG_ADDR_C_UPPER)
			iclass = 3;
		else if (addr >= UNREG_ADDR_B_LOWER && addr <= UNREG_ADDR_B_UPPER)
			iclass = 2;
		else if (addr >= UNREG_ADDR_A_LOWER && addr <= UNREG_ADDR_A_UPPER)
			iclass = 1;

		if (iclass == 0) {
			FUNC8(la, pip->ip_src);
		}
	} else if (la->packetAliasMode & PKT_ALIAS_PROXY_ONLY) {
		FUNC8(la, pip->ip_src);
	}
	iresult = PKT_ALIAS_IGNORED;
	if ((FUNC13(pip->ip_off) & IP_OFFMASK) == 0) {
		switch (pip->ip_p) {
		case IPPROTO_ICMP:
			iresult = FUNC4(la, pip, create);
			break;
		case IPPROTO_UDP:
			iresult = FUNC10(la, pip, maxpacketsize, create);
			break;
		case IPPROTO_TCP:
			iresult = FUNC9(la, pip, maxpacketsize, create);
			break;
#ifdef _KERNEL
		case IPPROTO_SCTP:
		  iresult = SctpAlias(la, pip, SN_TO_GLOBAL);
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
			error = FUNC11(OUT, IP, la, pip, &ad);
			if (error == 0)
 				iresult = PKT_ALIAS_OK;
 			else
 				iresult = FUNC6(la, &pip->ip_src, 
				    pip->ip_dst, pip->ip_p, &pip->ip_sum, create);
		}
 			break;
		default:
			iresult = FUNC6(la, &pip->ip_src,
			    pip->ip_dst, pip->ip_p, &pip->ip_sum, create);
			break;
		}
	} else {
		iresult = FUNC1(la, &pip->ip_src, &pip->ip_sum);
	}

	FUNC8(la, addr_save);
getout:
	return (iresult);
}