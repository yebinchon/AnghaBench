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
struct TYPE_2__ {int msg; } ;
union nic_mbx {TYPE_1__ msg; } ;
struct nicvf {int /*<<< orphan*/  vf_id; int /*<<< orphan*/  dev; void* pf_acked; void* pf_nacked; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int EINVAL ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC1 (struct nicvf*) ; 
 int NIC_MBOX_MSG_TIMEOUT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct nicvf*,union nic_mbx*) ; 

int
FUNC4(struct nicvf *nic, union nic_mbx *mbx)
{
	int timeout = NIC_MBOX_MSG_TIMEOUT * 10;
	int sleep = 2;

	FUNC1(nic);

	nic->pf_acked = FALSE;
	nic->pf_nacked = FALSE;

	FUNC3(nic, mbx);

	/* Wait for previous message to be acked, timeout 2sec */
	while (!nic->pf_acked) {
		if (nic->pf_nacked)
			return (EINVAL);

		FUNC0(sleep * 1000);

		if (nic->pf_acked)
			break;
		timeout -= sleep;
		if (!timeout) {
			FUNC2(nic->dev,
				   "PF didn't ack to mbox msg %d from VF%d\n",
				   (mbx->msg.msg & 0xFF), nic->vf_id);

			return (EBUSY);
		}
	}
	return (0);
}