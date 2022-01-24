#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct octeon_device {int dummy; } ;
struct TYPE_9__ {int param2; int more; int /*<<< orphan*/  param1; int /*<<< orphan*/  cmd; } ;
struct TYPE_10__ {TYPE_4__ s; scalar_t__ cmd64; } ;
struct lio_ctrl_pkt {TYPE_5__ ncmd; scalar_t__ wait_time; int /*<<< orphan*/ * udd; int /*<<< orphan*/  cb_fn; struct lio* lio; int /*<<< orphan*/  iq_no; } ;
struct TYPE_8__ {TYPE_2__* txpciq; } ;
struct lio {struct octeon_device* oct_dev; TYPE_3__ linfo; } ;
struct ifnet {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  q_no; } ;
struct TYPE_7__ {TYPE_1__ s; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  LIO_CMD_SET_MULTI_LIST ; 
 int /*<<< orphan*/  FUNC0 (struct lio_ctrl_pkt*,int) ; 
 int FUNC1 (struct ifnet*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct lio* FUNC2 (struct ifnet*) ; 
 int /*<<< orphan*/  lio_copy_maddr ; 
 int /*<<< orphan*/  lio_ctrl_cmd_completion ; 
 int /*<<< orphan*/  FUNC3 (struct octeon_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ifnet*) ; 
 int FUNC5 (struct octeon_device*,struct lio_ctrl_pkt*) ; 

__attribute__((used)) static int
FUNC6(struct ifnet *ifp)
{
	struct lio		*lio = FUNC2(ifp);
	struct octeon_device	*oct = lio->oct_dev;
	struct lio_ctrl_pkt	nctrl;
	int	mc_count;
	int	ret;

	FUNC0(&nctrl, sizeof(struct lio_ctrl_pkt));

	/* Create a ctrl pkt command to be sent to core app. */
	nctrl.ncmd.cmd64 = 0;
	nctrl.ncmd.s.cmd = LIO_CMD_SET_MULTI_LIST;
	nctrl.ncmd.s.param1 = FUNC4(ifp);
	nctrl.iq_no = lio->linfo.txpciq[0].s.q_no;
	nctrl.lio = lio;
	nctrl.cb_fn = lio_ctrl_cmd_completion;

	/* copy all the addresses into the udd */
	mc_count = FUNC1(ifp, lio_copy_maddr, &nctrl.udd[0]);

	/*
	 * Apparently, any activity in this call from the kernel has to
	 * be atomic. So we won't wait for response.
	 */
	nctrl.wait_time = 0;
	nctrl.ncmd.s.param2 = mc_count;
	nctrl.ncmd.s.more = mc_count;

	ret = FUNC5(lio->oct_dev, &nctrl);
	if (ret < 0) {
		FUNC3(oct, "DEVFLAGS change failed in core (ret: 0x%x)\n",
			    ret);
	}

	return ((ret) ? EINVAL : 0);
}