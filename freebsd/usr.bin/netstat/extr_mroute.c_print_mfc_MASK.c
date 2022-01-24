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
typedef  int vifi_t ;
typedef  int /*<<< orphan*/  u_long ;
struct sockaddr_in {int sin_len; int /*<<< orphan*/  sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
struct mfc {scalar_t__* mfc_ttls; struct bw_meter* mfc_bw_meter; int /*<<< orphan*/  mfc_parent; int /*<<< orphan*/  mfc_pkt_cnt; int /*<<< orphan*/  mfc_mcastgrp; int /*<<< orphan*/  mfc_origin; } ;
struct bw_meter {struct bw_meter* bm_mfc_next; } ;
typedef  int /*<<< orphan*/  sin ;
typedef  int /*<<< orphan*/  bw_meter ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_in*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  numeric_addr ; 
 int /*<<< orphan*/  FUNC3 (struct bw_meter*,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct sockaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void
FUNC10(struct mfc *m, int maxvif, int *banner_printed)
{
	struct sockaddr_in sin;
	struct sockaddr *sa = (struct sockaddr *)&sin;
	struct bw_meter bw_meter, *bwm;
	int bw_banner_printed;
	int error;
	vifi_t vifi;

	bw_banner_printed = 0;
	FUNC2(&sin, 0, sizeof(sin));
	sin.sin_len = sizeof(sin);
	sin.sin_family = AF_INET;

	if (! *banner_printed) {
		FUNC9("multicast-forwarding-entry");
		FUNC7("\n{T:IPv4 Multicast Forwarding Table}\n"
		    " {T:Origin}          {T:Group}            "
		    " {T:Packets In-Vif}  {T:Out-Vifs:Ttls}\n");
		*banner_printed = 1;
	}

	FUNC1(&sin.sin_addr, &m->mfc_origin, sizeof(sin.sin_addr));
	FUNC7(" {:origin-address/%-15.15s}", FUNC4(sa, numeric_addr));
	FUNC1(&sin.sin_addr, &m->mfc_mcastgrp, sizeof(sin.sin_addr));
	FUNC7(" {:group-address/%-15.15s}",
	    FUNC4(sa, numeric_addr));
	FUNC7(" {:sent-packets/%9lu}", m->mfc_pkt_cnt);
	FUNC7("  {:parent/%3d}   ", m->mfc_parent);
	FUNC9("vif-ttl");
	for (vifi = 0; vifi <= maxvif; vifi++) {
		if (m->mfc_ttls[vifi] > 0) {
			FUNC8("vif-ttl");
			FUNC7(" {k:vif/%u}:{:ttl/%u}", vifi,
			    m->mfc_ttls[vifi]);
			FUNC5("vif-ttl");
		}
	}
	FUNC6("vif-ttl");
	FUNC7("\n");

	/*
	 * XXX We break the rules and try to use KVM to read the
	 * bandwidth meters, they are not retrievable via sysctl yet.
	 */
	bwm = m->mfc_bw_meter;
	while (bwm != NULL) {
		error = FUNC0((u_long)bwm, (char *)&bw_meter,
		    sizeof(bw_meter));
		if (error)
			break;
		FUNC3(&bw_meter, &bw_banner_printed);
		bwm = bw_meter.bm_mfc_next;
	}
	if (banner_printed)
		FUNC6("bandwidth-meter");
}