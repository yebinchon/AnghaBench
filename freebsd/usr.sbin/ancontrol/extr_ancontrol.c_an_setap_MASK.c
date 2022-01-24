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
struct ether_addr {int dummy; } ;
struct an_req {int an_len; int /*<<< orphan*/  an_type; } ;
struct an_ltv_aplist {int /*<<< orphan*/  an_ap4; int /*<<< orphan*/  an_ap3; int /*<<< orphan*/  an_ap2; int /*<<< orphan*/  an_ap1; } ;
typedef  int /*<<< orphan*/  areq ;

/* Variables and functions */
#define  ACT_SET_AP1 131 
#define  ACT_SET_AP2 130 
#define  ACT_SET_AP3 129 
#define  ACT_SET_AP4 128 
 int /*<<< orphan*/  AN_RID_APLIST ; 
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct an_req*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,struct an_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct ether_addr*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 struct ether_addr* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(const char *iface, int act, void *arg)
{
	struct an_ltv_aplist	*ap;
	struct an_req		areq;
	struct ether_addr	*addr;

	areq.an_len = sizeof(areq);
	areq.an_type = AN_RID_APLIST;

	FUNC0(iface, &areq);
	ap = (struct an_ltv_aplist *)&areq;

	addr = FUNC5((char *)arg);

	if (addr == NULL)
		FUNC4(1, "badly formatted address");

	switch(act) {
	case ACT_SET_AP1:
		FUNC3(ap->an_ap1, ETHER_ADDR_LEN);
		FUNC2(addr, &ap->an_ap1, ETHER_ADDR_LEN);
		break;
	case ACT_SET_AP2:
		FUNC3(ap->an_ap2, ETHER_ADDR_LEN);
		FUNC2(addr, &ap->an_ap2, ETHER_ADDR_LEN);
		break;
	case ACT_SET_AP3:
		FUNC3(ap->an_ap3, ETHER_ADDR_LEN);
		FUNC2(addr, &ap->an_ap3, ETHER_ADDR_LEN);
		break;
	case ACT_SET_AP4:
		FUNC3(ap->an_ap4, ETHER_ADDR_LEN);
		FUNC2(addr, &ap->an_ap4, ETHER_ADDR_LEN);
		break;
	default:
		FUNC4(1, "unknown action");
		break;
	}

	FUNC1(iface, &areq);
	FUNC6(0);
}