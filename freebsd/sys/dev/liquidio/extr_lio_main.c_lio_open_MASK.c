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
typedef  int /*<<< orphan*/  uint8_t ;
struct octeon_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  hw_addr; } ;
struct lio {int intf_open; TYPE_1__ linfo; struct octeon_device* oct_dev; struct ifnet* ifp; } ;
struct ifnet {int dummy; } ;

/* Variables and functions */
 int ETHER_HDR_LEN ; 
 int /*<<< orphan*/  IFF_DRV_RUNNING ; 
 int /*<<< orphan*/ * FUNC0 (struct ifnet*) ; 
 int /*<<< orphan*/  LIO_IFSTATE_RUNNING ; 
 int /*<<< orphan*/  FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct octeon_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct lio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct lio*,int) ; 
 int FUNC7 (struct ifnet*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

void
FUNC9(void *arg)
{
	struct lio	*lio = arg;
	struct ifnet	*ifp = lio->ifp;
	struct octeon_device	*oct = lio->oct_dev;
	uint8_t	*mac_new, mac_old[ETHER_HDR_LEN];
	int	ret = 0;

	FUNC4(lio, LIO_IFSTATE_RUNNING);

	/* Ready for link status updates */
	lio->intf_open = 1;

	FUNC3(oct, "Interface Open, ready for traffic\n");

	/* tell Octeon to start forwarding packets to host */
	FUNC6(lio, 1);

	mac_new = FUNC0(ifp);
	FUNC8(mac_old, ((uint8_t *)&lio->linfo.hw_addr) + 2, ETHER_HDR_LEN);

	if (FUNC5(mac_new, mac_old)) {
		ret = FUNC7(ifp, mac_new);
		if (ret)
			FUNC2(oct, "MAC change failed, error: %d\n", ret);
	}

	/* Now inform the stack we're ready */
	FUNC1(ifp, IFF_DRV_RUNNING, 0);

	FUNC3(oct, "Interface is opened\n");
}