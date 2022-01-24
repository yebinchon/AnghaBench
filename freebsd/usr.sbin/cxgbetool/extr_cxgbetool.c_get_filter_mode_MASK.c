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
 int /*<<< orphan*/  CHELSIO_T4_GET_FILTER_MODE ; 
 int T4_FILTER_ETH_TYPE ; 
 int T4_FILTER_FCoE ; 
 int T4_FILTER_IC_VNIC ; 
 int T4_FILTER_IP_DADDR ; 
 int T4_FILTER_IP_DPORT ; 
 int T4_FILTER_IP_FRAGMENT ; 
 int T4_FILTER_IP_PROTO ; 
 int T4_FILTER_IP_SADDR ; 
 int T4_FILTER_IP_SPORT ; 
 int T4_FILTER_IP_TOS ; 
 int T4_FILTER_IPv4 ; 
 int T4_FILTER_IPv6 ; 
 int T4_FILTER_MAC_IDX ; 
 int T4_FILTER_MPS_HIT_TYPE ; 
 int T4_FILTER_PORT ; 
 int T4_FILTER_VLAN ; 
 int T4_FILTER_VNIC ; 
 int FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(int hashfilter)
{
	uint32_t mode = hashfilter;
	int rc;

	rc = FUNC0(CHELSIO_T4_GET_FILTER_MODE, &mode);
	if (rc != 0)
		return (rc);

	if (mode & T4_FILTER_IPv4)
		FUNC1("ipv4 ");

	if (mode & T4_FILTER_IPv6)
		FUNC1("ipv6 ");

	if (mode & T4_FILTER_IP_SADDR)
		FUNC1("sip ");

	if (mode & T4_FILTER_IP_DADDR)
		FUNC1("dip ");

	if (mode & T4_FILTER_IP_SPORT)
		FUNC1("sport ");

	if (mode & T4_FILTER_IP_DPORT)
		FUNC1("dport ");

	if (mode & T4_FILTER_IP_FRAGMENT)
		FUNC1("frag ");

	if (mode & T4_FILTER_MPS_HIT_TYPE)
		FUNC1("matchtype ");

	if (mode & T4_FILTER_MAC_IDX)
		FUNC1("macidx ");

	if (mode & T4_FILTER_ETH_TYPE)
		FUNC1("ethtype ");

	if (mode & T4_FILTER_IP_PROTO)
		FUNC1("proto ");

	if (mode & T4_FILTER_IP_TOS)
		FUNC1("tos ");

	if (mode & T4_FILTER_VLAN)
		FUNC1("vlan ");

	if (mode & T4_FILTER_VNIC) {
		if (mode & T4_FILTER_IC_VNIC)
			FUNC1("vnic_id ");
		else
			FUNC1("ovlan ");
	}

	if (mode & T4_FILTER_PORT)
		FUNC1("iport ");

	if (mode & T4_FILTER_FCoE)
		FUNC1("fcoe ");

	FUNC1("\n");

	return (0);
}