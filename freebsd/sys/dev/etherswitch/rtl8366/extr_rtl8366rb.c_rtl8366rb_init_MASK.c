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
struct rtl8366rb_softc {int* vid; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ETHERSWITCH_VID_VALID ; 
 int RTL8366_PVCR_PORT_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTL8366_RCR ; 
 int RTL8366_RCR_HARD_RESET ; 
 int RTL8366_RCR_SOFT_RESET ; 
 int /*<<< orphan*/  RTL8366_SGCR ; 
 int RTL8366_SGCR_EN_VLAN ; 
 int RTL8366_SGCR_EN_VLAN_4KTB ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int RTL8366_VMCR_MU_MEMBER_SHIFT ; 
 int /*<<< orphan*/  RTL8366_VMCR_MU_REG ; 
 int RTL8366_VMCR_MU_UNTAG_SHIFT ; 
 int /*<<< orphan*/  RTL_WAITOK ; 
 struct rtl8366rb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	struct rtl8366rb_softc *sc;
	int i;

	sc = FUNC4(dev);

	/* Initialisation for TL-WR1043ND */
#ifdef RTL8366_SOFT_RESET
	smi_rmw(dev, RTL8366_RCR,
		RTL8366_RCR_SOFT_RESET,
		RTL8366_RCR_SOFT_RESET, RTL_WAITOK);
#else
	FUNC5(dev, RTL8366_RCR,
		RTL8366_RCR_HARD_RESET,
		RTL8366_RCR_HARD_RESET, RTL_WAITOK);
#endif
	/* hard reset not return ack */
	FUNC0(100000);
	/* Enable 16 VLAN mode */
	FUNC5(dev, RTL8366_SGCR,
		RTL8366_SGCR_EN_VLAN | RTL8366_SGCR_EN_VLAN_4KTB,
		RTL8366_SGCR_EN_VLAN, RTL_WAITOK);
	/* Initialize our vlan table. */
	for (i = 0; i <= 1; i++)
		sc->vid[i] = (i + 1) | ETHERSWITCH_VID_VALID;
	/* Remove port 0 from VLAN 1. */
	FUNC5(dev, FUNC3(RTL8366_VMCR_MU_REG, 0),
		(1 << 0), 0, RTL_WAITOK);
	/* Add port 0 untagged and port 5 tagged to VLAN 2. */
	FUNC5(dev, FUNC3(RTL8366_VMCR_MU_REG, 1),
		((1 << 5 | 1 << 0) << RTL8366_VMCR_MU_MEMBER_SHIFT)
			| ((1 << 5 | 1 << 0) << RTL8366_VMCR_MU_UNTAG_SHIFT),
		((1 << 5 | 1 << 0) << RTL8366_VMCR_MU_MEMBER_SHIFT
			| ((1 << 0) << RTL8366_VMCR_MU_UNTAG_SHIFT)),
		RTL_WAITOK);
	/* Set PVID 2 for port 0. */
	FUNC5(dev, FUNC1(0),
		FUNC2(0, RTL8366_PVCR_PORT_MASK),
		FUNC2(0, 1), RTL_WAITOK);
}