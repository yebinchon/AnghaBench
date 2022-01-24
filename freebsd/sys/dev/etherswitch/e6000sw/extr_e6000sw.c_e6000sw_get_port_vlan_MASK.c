#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_9__ {int es_vlangroup; int es_vid; int es_untagged_ports; int es_member_ports; int es_fid; } ;
typedef  TYPE_1__ etherswitch_vlangroup_t ;
struct TYPE_10__ {int num_ports; } ;
typedef  TYPE_2__ e6000sw_softc_t ;

/* Variables and functions */
 int EINVAL ; 
 int ETHERSWITCH_VID_VALID ; 
 int /*<<< orphan*/  PORT_CONTROL1 ; 
 int PORT_CONTROL1_FID_MASK ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  PORT_VLAN_MAP ; 
 int PORT_VLAN_MAP_FID ; 
 int PORT_VLAN_MAP_FID_MASK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(e6000sw_softc_t *sc, etherswitch_vlangroup_t *vg)
{
	uint32_t port, reg;

	port = vg->es_vlangroup;
	if (port > sc->num_ports)
		return (EINVAL);

	if (!FUNC2(sc, port)) {
		vg->es_vid = port;
		return (0);
	}

	reg = FUNC3(sc, FUNC1(sc, port), PORT_VLAN_MAP);
	vg->es_untagged_ports = vg->es_member_ports = reg & FUNC0(sc);
	vg->es_vid = port | ETHERSWITCH_VID_VALID;
	vg->es_fid = (reg & PORT_VLAN_MAP_FID_MASK) >> PORT_VLAN_MAP_FID;
	reg = FUNC3(sc, FUNC1(sc, port), PORT_CONTROL1);
	vg->es_fid |= (reg & PORT_CONTROL1_FID_MASK) << 4;

	return (0);
}