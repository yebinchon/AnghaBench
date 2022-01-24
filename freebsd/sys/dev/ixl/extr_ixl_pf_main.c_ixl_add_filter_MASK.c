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
typedef  int /*<<< orphan*/  u8 ;
struct ixl_vsi {int num_vlans; int /*<<< orphan*/  num_macs; struct ixl_pf* back; } ;
struct ixl_pf {int /*<<< orphan*/  dev; } ;
struct ixl_mac_filter {scalar_t__ vlan; int /*<<< orphan*/  flags; } ;
typedef  scalar_t__ s16 ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  IXL_FILTER_USED ; 
 int /*<<< orphan*/  IXL_FILTER_VLAN ; 
 scalar_t__ IXL_VLAN_ANY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_vsi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_vsi*,int /*<<< orphan*/  const*,scalar_t__) ; 
 struct ixl_mac_filter* FUNC4 (struct ixl_vsi*,int /*<<< orphan*/  const*,scalar_t__) ; 
 struct ixl_mac_filter* FUNC5 (struct ixl_vsi*,int /*<<< orphan*/  const*,scalar_t__) ; 

void
FUNC6(struct ixl_vsi *vsi, const u8 *macaddr, s16 vlan)
{
	struct ixl_mac_filter	*f, *tmp;
	struct ixl_pf		*pf;
	device_t		dev;

	FUNC0("ixl_add_filter: begin");

	pf = vsi->back;
	dev = pf->dev;

	/* Does one already exist */
	f = FUNC4(vsi, macaddr, vlan);
	if (f != NULL)
		return;
	/*
	** Is this the first vlan being registered, if so we
	** need to remove the ANY filter that indicates we are
	** not in a vlan, and replace that with a 0 filter.
	*/
	if ((vlan != IXL_VLAN_ANY) && (vsi->num_vlans == 1)) {
		tmp = FUNC4(vsi, macaddr, IXL_VLAN_ANY);
		if (tmp != NULL) {
			FUNC3(vsi, macaddr, IXL_VLAN_ANY);
			FUNC6(vsi, macaddr, 0);
		}
	}

	f = FUNC5(vsi, macaddr, vlan);
	if (f == NULL) {
		FUNC1(dev, "WARNING: no filter available!!\n");
		return;
	}
	if (f->vlan != IXL_VLAN_ANY)
		f->flags |= IXL_FILTER_VLAN;
	else
		vsi->num_macs++;

	f->flags |= IXL_FILTER_USED;
	FUNC2(vsi, f->flags, 1);
}