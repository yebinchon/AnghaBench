#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ifnet {int if_mtu; scalar_t__ if_softc; } ;
struct TYPE_4__ {int minlen; int maxlen; } ;
struct TYPE_5__ {int u64; TYPE_1__ s; } ;
typedef  TYPE_2__ cvmx_pip_frm_len_chkx_t ;
struct TYPE_6__ {int /*<<< orphan*/  port; } ;
typedef  TYPE_3__ cvm_oct_private_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ CVMX_HELPER_INTERFACE_MODE_SPI ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int EINVAL ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OCTEON_CN3XXX ; 
 int /*<<< orphan*/  OCTEON_CN58XX ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 

int FUNC9(struct ifnet *ifp, int new_mtu)
{
	cvm_oct_private_t *priv = (cvm_oct_private_t *)ifp->if_softc;
	int interface = FUNC4(priv->port);
	int index = FUNC3(priv->port);
	int vlan_bytes = 4;

	/* Limit the MTU to make sure the ethernet packets are between 64 bytes
	   and 65535 bytes */
	if ((new_mtu + 14 + 4 + vlan_bytes < 64) || (new_mtu + 14 + 4 + vlan_bytes > 65392)) {
		FUNC8("MTU must be between %d and %d.\n", 64-14-4-vlan_bytes, 65392-14-4-vlan_bytes);
		return -EINVAL;
	}
	ifp->if_mtu = new_mtu;

	if ((interface < 2) && (FUNC6(interface) != CVMX_HELPER_INTERFACE_MODE_SPI)) {
		int max_packet = new_mtu + 14 + 4 + vlan_bytes; /* Add ethernet header and FCS, and VLAN if configured. */

		if (FUNC5(OCTEON_CN3XXX) || FUNC5(OCTEON_CN58XX)) {
			/* Signal errors on packets larger than the MTU */
			FUNC7(FUNC0(index, interface), max_packet);
		} else {
			/* Set the hardware to truncate packets larger than the MTU and
				smaller the 64 bytes */
			cvmx_pip_frm_len_chkx_t frm_len_chk;
			frm_len_chk.u64 = 0;
			frm_len_chk.s.minlen = 64;
			frm_len_chk.s.maxlen = max_packet;
			FUNC7(FUNC2(interface), frm_len_chk.u64);
		}
		/* Set the hardware to truncate packets larger than the MTU. The
		   jabber register must be set to a multiple of 8 bytes, so round up */
		FUNC7(FUNC1(index, interface), (max_packet + 7) & ~7u);
	}
	return 0;
}