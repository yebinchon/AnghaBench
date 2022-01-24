#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int u16 ;
struct qlnxr_dev {TYPE_1__* ha; } ;
struct ifnet {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  primary_mac; int /*<<< orphan*/  ifp; } ;

/* Variables and functions */
#define  NETDEV_DOWN 129 
#define  NETDEV_UP 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct qlnxr_dev*,union ib_gid*) ; 
 int /*<<< orphan*/  FUNC3 (union ib_gid*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct qlnxr_dev*,union ib_gid*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (struct qlnxr_dev *dev,
				unsigned long event,
				struct ifnet *ifp,
				union ib_gid *gid)
{
	bool is_vlan = false;
	union ib_gid vgid;
	u16 vlan_id = 0xffff;

	FUNC0(dev->ha, "Link event occured\n");
	is_vlan = FUNC1(dev->ha->ifp);
	vlan_id = (is_vlan) ? FUNC5(dev->ha->ifp) : 0;

	switch (event) {
	case NETDEV_UP :
		FUNC2(dev, gid);
		if (is_vlan) {
			FUNC3(&vgid, dev->ha->primary_mac, is_vlan, vlan_id);
			FUNC2(dev, &vgid);
		}
		break;
	case NETDEV_DOWN :
		FUNC4(dev, gid);
		if (is_vlan) {
			FUNC3(&vgid, dev->ha->primary_mac, is_vlan, vlan_id);
			FUNC4(dev, &vgid);
		}
		break;
	default :
		break;
	}
	return 1;
}