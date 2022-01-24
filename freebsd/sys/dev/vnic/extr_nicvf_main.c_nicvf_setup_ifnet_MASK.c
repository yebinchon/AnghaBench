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
struct nicvf {scalar_t__ hw_tso; int /*<<< orphan*/  dev; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int CSUM_IP ; 
 int CSUM_SCTP ; 
 int CSUM_TCP ; 
 int CSUM_TSO ; 
 int CSUM_UDP ; 
 int ENOMEM ; 
 int /*<<< orphan*/  ETHERMTU ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_HWSTATS ; 
 int IFCAP_JUMBO_MTU ; 
 int IFCAP_LRO ; 
 int IFCAP_TSO4 ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int /*<<< orphan*/  IFT_ETHER ; 
 int /*<<< orphan*/  MCLBYTES ; 
 int /*<<< orphan*/  NICVF_TSO_MAXSIZE ; 
 int /*<<< orphan*/  NICVF_TSO_NSEGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 struct ifnet* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC5 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC6 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct ifnet*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct ifnet*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct ifnet*,struct nicvf*) ; 
 int /*<<< orphan*/  FUNC21 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nicvf_if_getcounter ; 
 int /*<<< orphan*/  nicvf_if_init ; 
 int /*<<< orphan*/  nicvf_if_ioctl ; 
 int /*<<< orphan*/  nicvf_if_qflush ; 
 int /*<<< orphan*/  nicvf_if_transmit ; 

__attribute__((used)) static int
FUNC22(struct nicvf *nic)
{
	struct ifnet *ifp;

	ifp = FUNC3(IFT_ETHER);
	if (ifp == NULL) {
		FUNC2(nic->dev, "Could not allocate ifnet structure\n");
		return (ENOMEM);
	}

	nic->ifp = ifp;

	FUNC20(ifp, nic);
	FUNC6(ifp, FUNC0(nic->dev), FUNC1(nic->dev));
	FUNC10(ifp, IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST);

	FUNC21(ifp, nicvf_if_transmit);
	FUNC19(ifp, nicvf_if_qflush);
	FUNC17(ifp, nicvf_if_ioctl);
	FUNC16(ifp, nicvf_if_init);
	FUNC11(ifp, nicvf_if_getcounter);

	FUNC18(ifp, ETHERMTU);

	/* Reset caps */
	FUNC7(ifp, 0);

	/* Set the default values */
	FUNC8(ifp, IFCAP_VLAN_MTU | IFCAP_JUMBO_MTU, 0);
	FUNC8(ifp, IFCAP_LRO, 0);
	if (nic->hw_tso) {
		/* TSO */
		FUNC8(ifp, IFCAP_TSO4, 0);
		/* TSO parameters */
		FUNC13(ifp, NICVF_TSO_MAXSIZE);
		FUNC14(ifp, NICVF_TSO_NSEGS);
		FUNC15(ifp, MCLBYTES);
	}
	/* IP/TCP/UDP HW checksums */
	FUNC8(ifp, IFCAP_HWCSUM, 0);
	FUNC8(ifp, IFCAP_HWSTATS, 0);
	/*
	 * HW offload enable
	 */
	FUNC4(ifp);
	FUNC12(ifp, (CSUM_IP | CSUM_TCP | CSUM_UDP | CSUM_SCTP), 0);
	if (nic->hw_tso)
		FUNC12(ifp, (CSUM_TSO), 0);
	FUNC9(ifp, FUNC5(ifp));

	return (0);
}