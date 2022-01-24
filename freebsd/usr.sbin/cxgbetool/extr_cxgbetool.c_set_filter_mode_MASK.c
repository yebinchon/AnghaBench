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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHELSIO_T4_SET_FILTER_MODE ; 
 int EINVAL ; 
 int /*<<< orphan*/  T4_FILTER_ETH_TYPE ; 
 int /*<<< orphan*/  T4_FILTER_FCoE ; 
 int /*<<< orphan*/  T4_FILTER_IC_VNIC ; 
 int /*<<< orphan*/  T4_FILTER_IP_FRAGMENT ; 
 int /*<<< orphan*/  T4_FILTER_IP_PROTO ; 
 int /*<<< orphan*/  T4_FILTER_IP_TOS ; 
 int /*<<< orphan*/  T4_FILTER_MAC_IDX ; 
 int /*<<< orphan*/  T4_FILTER_MPS_HIT_TYPE ; 
 int /*<<< orphan*/  T4_FILTER_PORT ; 
 int /*<<< orphan*/  T4_FILTER_VLAN ; 
 int /*<<< orphan*/  T4_FILTER_VNIC ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static int
FUNC3(int argc, const char *argv[])
{
	uint32_t mode = 0;
	int vnic = 0, ovlan = 0;

	for (; argc; argc--, argv++) {
		if (!FUNC1(argv[0], "frag"))
			mode |= T4_FILTER_IP_FRAGMENT;

		if (!FUNC1(argv[0], "matchtype"))
			mode |= T4_FILTER_MPS_HIT_TYPE;

		if (!FUNC1(argv[0], "macidx"))
			mode |= T4_FILTER_MAC_IDX;

		if (!FUNC1(argv[0], "ethtype"))
			mode |= T4_FILTER_ETH_TYPE;

		if (!FUNC1(argv[0], "proto"))
			mode |= T4_FILTER_IP_PROTO;

		if (!FUNC1(argv[0], "tos"))
			mode |= T4_FILTER_IP_TOS;

		if (!FUNC1(argv[0], "vlan"))
			mode |= T4_FILTER_VLAN;

		if (!FUNC1(argv[0], "ovlan")) {
			mode |= T4_FILTER_VNIC;
			ovlan++;
		}

		if (!FUNC1(argv[0], "vnic_id")) {
			mode |= T4_FILTER_VNIC;
			mode |= T4_FILTER_IC_VNIC;
			vnic++;
		}

		if (!FUNC1(argv[0], "iport"))
			mode |= T4_FILTER_PORT;

		if (!FUNC1(argv[0], "fcoe"))
			mode |= T4_FILTER_FCoE;
	}

	if (vnic > 0 && ovlan > 0) {
		FUNC2("\"vnic_id\" and \"ovlan\" are mutually exclusive.");
		return (EINVAL);
	}

	return FUNC0(CHELSIO_T4_SET_FILTER_MODE, &mode);
}