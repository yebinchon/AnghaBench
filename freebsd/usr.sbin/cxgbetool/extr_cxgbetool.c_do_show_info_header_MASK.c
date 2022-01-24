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
typedef  int uint32_t ;

/* Variables and functions */
#define  T4_FILTER_ETH_TYPE 137 
#define  T4_FILTER_FCoE 136 
 int T4_FILTER_IC_VNIC ; 
#define  T4_FILTER_IP_FRAGMENT 135 
#define  T4_FILTER_IP_PROTO 134 
#define  T4_FILTER_IP_TOS 133 
#define  T4_FILTER_MAC_IDX 132 
#define  T4_FILTER_MPS_HIT_TYPE 131 
#define  T4_FILTER_PORT 130 
#define  T4_FILTER_VLAN 129 
#define  T4_FILTER_VNIC 128 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void
FUNC1(uint32_t mode)
{
	uint32_t i;

	FUNC0("%4s %8s", "Idx", "Hits");
	for (i = T4_FILTER_FCoE; i <= T4_FILTER_IP_FRAGMENT; i <<= 1) {
		switch (mode & i) {
		case T4_FILTER_FCoE:
			FUNC0(" FCoE");
			break;

		case T4_FILTER_PORT:
			FUNC0(" Port");
			break;

		case T4_FILTER_VNIC:
			if (mode & T4_FILTER_IC_VNIC)
				FUNC0("   VFvld:PF:VF");
			else
				FUNC0("     vld:oVLAN");
			break;

		case T4_FILTER_VLAN:
			FUNC0("      vld:VLAN");
			break;

		case T4_FILTER_IP_TOS:
			FUNC0("   TOS");
			break;

		case T4_FILTER_IP_PROTO:
			FUNC0("  Prot");
			break;

		case T4_FILTER_ETH_TYPE:
			FUNC0("   EthType");
			break;

		case T4_FILTER_MAC_IDX:
			FUNC0("  MACIdx");
			break;

		case T4_FILTER_MPS_HIT_TYPE:
			FUNC0(" MPS");
			break;

		case T4_FILTER_IP_FRAGMENT:
			FUNC0(" Frag");
			break;

		default:
			/* compressed filter field not enabled */
			break;
		}
	}
	FUNC0(" %20s %20s %9s %9s %s\n",
	    "DIP", "SIP", "DPORT", "SPORT", "Action");
}