#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct e6060sw_softc {scalar_t__ vlan_mode; scalar_t__ smi_offset; } ;
struct TYPE_3__ {scalar_t__ es_vlangroup; int es_member_ports; int es_untagged_ports; } ;
typedef  TYPE_1__ etherswitch_vlangroup_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ CORE_REGISTER ; 
 scalar_t__ ETHERSWITCH_VLAN_DOT1Q ; 
 scalar_t__ ETHERSWITCH_VLAN_PORT ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PORT_VLAN_MAP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct e6060sw_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,int) ; 

__attribute__((used)) static int
FUNC5(device_t dev, etherswitch_vlangroup_t *vg)
{
	struct e6060sw_softc *sc;
	int data1, data2;
	int i;

	sc = FUNC3(dev);

	if (sc->vlan_mode == ETHERSWITCH_VLAN_PORT) {
		data1 = FUNC0(FUNC2(dev),
		    CORE_REGISTER + sc->smi_offset + vg->es_vlangroup,
		    PORT_VLAN_MAP);
		data1 &= ~0x3f;
		data1 |= vg->es_member_ports;
		FUNC1(FUNC2(dev),
		    CORE_REGISTER + sc->smi_offset + vg->es_vlangroup,
		    PORT_VLAN_MAP, data1); 
	} else if (sc->vlan_mode == ETHERSWITCH_VLAN_DOT1Q) {
		if (vg->es_vlangroup == 0)
			return (0);
		data1 = 0;
		data2 = 0;
		for (i = 0; i < 6; ++i) {
			if (vg->es_member_ports & 
			    vg->es_untagged_ports & (1 << i)) {
				if (i < 4) {
					data1 |= (0xd << i * 4);
				} else {
					data2 |= (0xd << (i - 4) * 4);
				}
			} else if (vg->es_member_ports & (1 << i)) {
				if (i < 4) {
					data1 |= (0xe << i * 4);
				} else {
					data2 |= (0xe << (i - 4) * 4);
				}
			} else {
				if (i < 4) {
					data1 |= (0x3 << i * 4);
				} else {
					data2 |= (0x3 << (i - 4) * 4);
				}
			}
		}
		FUNC4(dev, vg->es_vlangroup, data1, data2);
	}
	return (0);
}