#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct octeon_device {int /*<<< orphan*/  device; } ;
struct TYPE_9__ {int /*<<< orphan*/  mtu; } ;
struct TYPE_10__ {TYPE_2__ s; } ;
struct TYPE_11__ {TYPE_3__ link; } ;
struct TYPE_12__ {int /*<<< orphan*/  ifm_media; TYPE_1__* ifm_cur; } ;
struct lio {TYPE_4__ linfo; int /*<<< orphan*/  mtu; TYPE_5__ ifmedia; int /*<<< orphan*/  ifp; struct octeon_device* oct_dev; } ;
typedef  int /*<<< orphan*/  if_t ;
struct TYPE_8__ {int /*<<< orphan*/  ifm_media; } ;

/* Variables and functions */
 int CSUM_IP ; 
 int CSUM_TCP ; 
 int CSUM_TCP_IPV6 ; 
 int CSUM_TSO ; 
 int CSUM_UDP ; 
 int CSUM_UDP_IPV6 ; 
 int IFCAP_HWCSUM ; 
 int IFCAP_HWCSUM_IPV6 ; 
 int IFCAP_HWSTATS ; 
 int IFCAP_JUMBO_MTU ; 
 int IFCAP_LINKSTATE ; 
 int IFCAP_LRO ; 
 int IFCAP_TSO ; 
 int IFCAP_VLAN_HWCSUM ; 
 int IFCAP_VLAN_HWFILTER ; 
 int IFCAP_VLAN_HWTAGGING ; 
 int IFCAP_VLAN_HWTSO ; 
 int IFCAP_VLAN_MTU ; 
 int IFF_BROADCAST ; 
 int IFF_MULTICAST ; 
 int IFF_SIMPLEX ; 
 int IFM_AUTO ; 
 int IFM_ETHER ; 
 int IFM_FDX ; 
 int /*<<< orphan*/  IFM_IMASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct octeon_device*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct octeon_device*) ; 
 int /*<<< orphan*/  lio_get_counter ; 
 int FUNC20 (struct octeon_device*) ; 
 int /*<<< orphan*/  lio_ifmedia_status ; 
 int /*<<< orphan*/  lio_ifmedia_update ; 
 int /*<<< orphan*/  lio_ioctl ; 
 int /*<<< orphan*/  lio_mq_start ; 
 int /*<<< orphan*/  lio_open ; 
 int /*<<< orphan*/  lio_qflush ; 

__attribute__((used)) static int
FUNC21(struct lio *lio)
{
	struct octeon_device	*oct = lio->oct_dev;
	if_t ifp = lio->ifp;

	/* ifconfig entrypoint for media type/status reporting */
	FUNC16(&lio->ifmedia, IFM_IMASK, lio_ifmedia_update,
		     lio_ifmedia_status);

	/* set the default interface values */
	FUNC15(&lio->ifmedia,
		    (IFM_ETHER | IFM_FDX | FUNC20(oct)),
		    0, NULL);
	FUNC15(&lio->ifmedia, (IFM_ETHER | IFM_AUTO), 0, NULL);
	FUNC17(&lio->ifmedia, (IFM_ETHER | IFM_AUTO));

	lio->ifmedia.ifm_media = lio->ifmedia.ifm_cur->ifm_media;
	FUNC18(oct, "IFMEDIA flags : %x\n", lio->ifmedia.ifm_media);

	FUNC3(ifp, FUNC0(oct->device),
		    FUNC1(oct->device));
	FUNC7(ifp, (IFF_BROADCAST | IFF_SIMPLEX | IFF_MULTICAST));
	FUNC11(ifp, lio_ioctl);
	FUNC8(ifp, lio_get_counter);
	FUNC14(ifp, lio_mq_start);
	FUNC13(ifp, lio_qflush);
	FUNC10(ifp, lio_open);
	FUNC12(ifp, lio->linfo.link.s.mtu);
	lio->mtu = lio->linfo.link.s.mtu;
	FUNC9(ifp, (CSUM_IP | CSUM_TCP | CSUM_UDP | CSUM_TSO |
			     CSUM_TCP_IPV6 | CSUM_UDP_IPV6));

	FUNC5(ifp, (IFCAP_HWCSUM | IFCAP_HWCSUM_IPV6 |
				    IFCAP_TSO | IFCAP_LRO |
				    IFCAP_JUMBO_MTU | IFCAP_HWSTATS |
				    IFCAP_LINKSTATE | IFCAP_VLAN_HWFILTER |
				    IFCAP_VLAN_HWCSUM | IFCAP_VLAN_HWTAGGING |
				    IFCAP_VLAN_HWTSO | IFCAP_VLAN_MTU), 0);

	FUNC6(ifp, FUNC2(ifp));
	FUNC4(ifp, FUNC19(oct));

	return (0);
}