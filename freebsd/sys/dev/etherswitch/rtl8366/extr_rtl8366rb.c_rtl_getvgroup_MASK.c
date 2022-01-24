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
typedef  int /*<<< orphan*/  uint16_t ;
struct rtl8366rb_softc {scalar_t__ phy4cpu; int /*<<< orphan*/ * vid; } ;
struct TYPE_3__ {size_t es_vlangroup; int es_member_ports; int es_untagged_ports; int /*<<< orphan*/  es_fid; int /*<<< orphan*/  es_vid; } ;
typedef  TYPE_1__ etherswitch_vlangroup_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int RTL8366_VMCR_MULT ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 struct rtl8366rb_softc* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(device_t dev, etherswitch_vlangroup_t *vg)
{
	struct rtl8366rb_softc *sc;
	uint16_t vmcr[3];
	int i;
	int member, untagged;
	
	sc = FUNC4(dev);

	for (i=0; i<RTL8366_VMCR_MULT; i++)
		vmcr[i] = FUNC5(dev, FUNC0(i, vg->es_vlangroup));
		
	vg->es_vid = sc->vid[vg->es_vlangroup];
	member = FUNC2(vmcr);
	untagged = FUNC3(vmcr);
	if (sc->phy4cpu) {
		vg->es_member_ports = ((member & 0x20) >> 1) | (member & 0x0f);
		vg->es_untagged_ports = ((untagged & 0x20) >> 1) | (untagged & 0x0f);
	} else {
		vg->es_member_ports = member;
		vg->es_untagged_ports = untagged;
	}
	vg->es_fid = FUNC1(vmcr);
	return (0);
}