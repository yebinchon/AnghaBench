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
typedef  int u_long ;
struct lio {int if_flags; int /*<<< orphan*/  oct_dev; int /*<<< orphan*/  ifmedia; int /*<<< orphan*/  ifstate; } ;
struct ifreq {int ifr_reqcap; int /*<<< orphan*/  ifr_mtu; } ;
struct ifnet {int dummy; } ;
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_TCP_IPV6 ; 
 int CSUM_UDP ; 
 int CSUM_UDP_IPV6 ; 
 int IFCAP_LRO ; 
 int IFCAP_RXCSUM ; 
 int IFCAP_RXCSUM_IPV6 ; 
 int IFCAP_TSO4 ; 
 int IFCAP_TSO6 ; 
 int IFCAP_TXCSUM ; 
 int IFCAP_TXCSUM_IPV6 ; 
 int IFCAP_VLAN_HWFILTER ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFF_ALLMULTI ; 
 int IFF_DRV_RUNNING ; 
 int IFF_PROMISC ; 
 int IFF_UP ; 
 int LIO_IFSTATE_DETACH ; 
#define  SIOCADDMULTI 136 
#define  SIOCDELMULTI 135 
#define  SIOCGIFMEDIA 134 
#define  SIOCGIFXMEDIA 133 
#define  SIOCSIFADDR 132 
#define  SIOCSIFCAP 131 
#define  SIOCSIFFLAGS 130 
#define  SIOCSIFMEDIA 129 
#define  SIOCSIFMTU 128 
 int /*<<< orphan*/  FUNC0 (struct ifnet*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct ifnet*,int,scalar_t__) ; 
 int FUNC3 (struct ifnet*) ; 
 int FUNC4 (struct ifnet*) ; 
 int FUNC5 (struct ifnet*) ; 
 struct lio* FUNC6 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC7 (struct ifnet*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ifnet*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ifnet*,int) ; 
 int FUNC10 (struct ifnet*,struct ifreq*,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (struct ifnet*) ; 
 int FUNC12 (struct ifnet*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (struct lio*) ; 
 int FUNC15 (struct ifnet*) ; 
 int FUNC16 (struct ifnet*) ; 
 int FUNC17 (struct ifnet*,int) ; 
 int FUNC18 (struct ifnet*) ; 
 int FUNC19 (struct ifnet*) ; 
 int /*<<< orphan*/  FUNC20 (struct ifnet*) ; 

int
FUNC21(struct ifnet *ifp, u_long cmd, caddr_t data)
{
	struct lio	*lio = FUNC6(ifp);
	struct ifreq	*ifrequest = (struct ifreq *)data;
	int	error = 0;

	switch (cmd) {
	case SIOCSIFADDR:
		FUNC13(lio->oct_dev, "ioctl: SIOCSIFADDR\n");
		FUNC7(ifp, IFF_UP, 0);
		error = FUNC2(ifp, cmd, data);
		break;
	case SIOCSIFMTU:
		FUNC13(lio->oct_dev, "ioctl: SIOCSIFMTU\n");
		error = FUNC12(ifp, ifrequest->ifr_mtu);
		break;
	case SIOCSIFFLAGS:
		FUNC13(lio->oct_dev, "ioctl: SIOCSIFFLAGS\n");
		if (FUNC5(ifp) & IFF_UP) {
			if (FUNC4(ifp) & IFF_DRV_RUNNING) {
				if ((FUNC5(ifp) ^ lio->if_flags) &
				    (IFF_PROMISC | IFF_ALLMULTI))
					error = FUNC11(ifp);
			} else {
				if (!(FUNC1(&lio->ifstate) &
				      LIO_IFSTATE_DETACH))
					FUNC14(lio);
			}
		} else {
			if (FUNC4(ifp) & IFF_DRV_RUNNING)
				FUNC20(ifp);
		}
		lio->if_flags = FUNC5(ifp);
		break;
	case SIOCADDMULTI:
		FUNC13(lio->oct_dev, "ioctl: SIOCADDMULTI\n");
		if (FUNC4(ifp) & IFF_DRV_RUNNING)
			error = FUNC16(ifp);
		break;
	case SIOCDELMULTI:
		FUNC13(lio->oct_dev, "ioctl: SIOCSIFMULTI\n");
		break;
	case SIOCSIFMEDIA:
		FUNC13(lio->oct_dev, "ioctl: SIOCSIFMEDIA\n");
	case SIOCGIFMEDIA:
		FUNC13(lio->oct_dev, "ioctl: SIOCGIFMEDIA\n");
	case SIOCGIFXMEDIA:
		FUNC13(lio->oct_dev, "ioctl: SIOCGIFXMEDIA\n");
		error = FUNC10(ifp, ifrequest, &lio->ifmedia, cmd);
		break;
	case SIOCSIFCAP:
		{
			int	features = ifrequest->ifr_reqcap ^
					FUNC3(ifp);

			FUNC13(lio->oct_dev, "ioctl: SIOCSIFCAP (Set Capabilities)\n");

			if (!features)
				break;

			if (features & IFCAP_TXCSUM) {
				FUNC9(ifp, IFCAP_TXCSUM);
				if (FUNC3(ifp) & IFCAP_TXCSUM)
					FUNC8(ifp, (CSUM_TCP |
								 CSUM_UDP |
								 CSUM_IP), 0);
				else
					FUNC8(ifp, 0,
							(CSUM_TCP | CSUM_UDP |
							 CSUM_IP));
			}
			if (features & IFCAP_TXCSUM_IPV6) {
				FUNC9(ifp, IFCAP_TXCSUM_IPV6);
				if (FUNC3(ifp) & IFCAP_TXCSUM_IPV6)
					FUNC8(ifp, (CSUM_UDP_IPV6 |
							   CSUM_TCP_IPV6), 0);
				else
					FUNC8(ifp, 0,
							   (CSUM_UDP_IPV6 |
							    CSUM_TCP_IPV6));
			}
			if (features & (IFCAP_RXCSUM | IFCAP_RXCSUM_IPV6))
				error |= FUNC17(ifp, (features &
							       (IFCAP_RXCSUM |
							 IFCAP_RXCSUM_IPV6)));

			if (features & IFCAP_TSO4)
				error |= FUNC18(ifp);

			if (features & IFCAP_TSO6)
				error |= FUNC19(ifp);

			if (features & IFCAP_LRO)
				error |= FUNC15(ifp);

			if (features & IFCAP_VLAN_HWTAGGING)
				FUNC9(ifp, IFCAP_VLAN_HWTAGGING);

			if (features & IFCAP_VLAN_HWFILTER)
				FUNC9(ifp, IFCAP_VLAN_HWFILTER);

			if (features & IFCAP_VLAN_HWTSO)
				FUNC9(ifp, IFCAP_VLAN_HWTSO);

			FUNC0(ifp);
			break;
		}
	default:
		FUNC13(lio->oct_dev, "ioctl: UNKNOWN (0x%X)\n", (int)cmd);
		error = FUNC2(ifp, cmd, data);
		break;
	}

	return (error);
}