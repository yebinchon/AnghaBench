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
typedef  int /*<<< orphan*/  u_int32_t ;
struct libalias {int packetAliasMode; scalar_t__ fireWallFD; int fireWallActiveNum; int fireWallBaseNum; int fireWallNumNums; int /*<<< orphan*/  fireWallField; } ;
struct ip_fw {int dummy; } ;
struct TYPE_4__ {TYPE_1__* tcp; } ;
struct alias_link {scalar_t__ link_type; TYPE_2__ data; struct libalias* la; } ;
typedef  int /*<<< orphan*/  rulebuf ;
struct TYPE_3__ {int fwhole; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct alias_link*) ; 
 scalar_t__ FUNC1 (struct alias_link*) ; 
 int /*<<< orphan*/  FUNC2 (struct alias_link*) ; 
 scalar_t__ FUNC3 (struct alias_link*) ; 
 int /*<<< orphan*/  IPPROTO_IP ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int /*<<< orphan*/  IP_FW_ADD ; 
 scalar_t__ LINK_TCP ; 
 int /*<<< orphan*/  O_ACCEPT ; 
 int PKT_ALIAS_PUNCH_FW ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct libalias*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (struct libalias*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ip_fw*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int FUNC11 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 

void
FUNC12(struct alias_link *lnk)
{
	struct libalias *la;
	int r;			/* Result code */
	struct ip_fw rule;	/* On-the-fly built rule */
	int fwhole;		/* Where to punch hole */

	la = lnk->la;

/* Don't do anything unless we are asked to */
	if (!(la->packetAliasMode & PKT_ALIAS_PUNCH_FW) ||
	    la->fireWallFD < 0 ||
	    lnk->link_type != LINK_TCP)
		return;

	FUNC9(&rule, 0, sizeof rule);

/** Build rule **/

	/* Find empty slot */
	for (fwhole = la->fireWallActiveNum;
	    fwhole < la->fireWallBaseNum + la->fireWallNumNums &&
	    FUNC8(la, la->fireWallField, fwhole);
	    fwhole++);
	if (fwhole == la->fireWallBaseNum + la->fireWallNumNums) {
		for (fwhole = la->fireWallBaseNum;
		    fwhole < la->fireWallActiveNum &&
		    FUNC8(la, la->fireWallField, fwhole);
		    fwhole++);
		if (fwhole == la->fireWallActiveNum) {
			/* No rule point empty - we can't punch more holes. */
			la->fireWallActiveNum = la->fireWallBaseNum;
#ifdef LIBALIAS_DEBUG
			fprintf(stderr, "libalias: Unable to create firewall hole!\n");
#endif
			return;
		}
	}
	/* Start next search at next position */
	la->fireWallActiveNum = fwhole + 1;

	/*
	 * generate two rules of the form
	 *
	 * add fwhole accept tcp from OAddr OPort to DAddr DPort add fwhole
	 * accept tcp from DAddr DPort to OAddr OPort
	 */
	if (FUNC3(lnk) != 0 && FUNC1(lnk) != 0) {
		u_int32_t rulebuf[255];
		int i;

		i = FUNC5(rulebuf, sizeof(rulebuf), fwhole,
		    O_ACCEPT, IPPROTO_TCP,
		    FUNC2(lnk), FUNC10(FUNC3(lnk)),
		    FUNC0(lnk), FUNC10(FUNC1(lnk)));
		r = FUNC11(la->fireWallFD, IPPROTO_IP, IP_FW_ADD, rulebuf, i);
		if (r)
			FUNC4(1, "alias punch inbound(1) setsockopt(IP_FW_ADD)");

		i = FUNC5(rulebuf, sizeof(rulebuf), fwhole,
		    O_ACCEPT, IPPROTO_TCP,
		    FUNC0(lnk), FUNC10(FUNC1(lnk)),
		    FUNC2(lnk), FUNC10(FUNC3(lnk)));
		r = FUNC11(la->fireWallFD, IPPROTO_IP, IP_FW_ADD, rulebuf, i);
		if (r)
			FUNC4(1, "alias punch inbound(2) setsockopt(IP_FW_ADD)");
	}

/* Indicate hole applied */
	lnk->data.tcp->fwhole = fwhole;
	FUNC7(la, la->fireWallField, fwhole);
}