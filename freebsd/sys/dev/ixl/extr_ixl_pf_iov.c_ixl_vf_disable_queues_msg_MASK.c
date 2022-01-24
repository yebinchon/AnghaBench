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
typedef  int uint16_t ;
struct virtchnl_queue_select {scalar_t__ vsi_id; scalar_t__ rx_queues; scalar_t__ tx_queues; } ;
struct TYPE_2__ {scalar_t__ vsi_num; int num_tx_queues; int num_rx_queues; } ;
struct ixl_vf {int /*<<< orphan*/  qtag; int /*<<< orphan*/  vf_num; TYPE_1__ vsi; } ;
struct ixl_pf {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 int /*<<< orphan*/  I40E_ERR_TIMEOUT ; 
 int /*<<< orphan*/  VIRTCHNL_OP_DISABLE_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_pf*,char*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct ixl_pf*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct ixl_pf*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(struct ixl_pf *pf, struct ixl_vf *vf,
    void *msg, uint16_t msg_size)
{
	struct virtchnl_queue_select *select;
	int error = 0;

	if (msg_size != sizeof(*select)) {
		FUNC1(pf, vf, VIRTCHNL_OP_DISABLE_QUEUES,
		    I40E_ERR_PARAM);
		return;
	}

	select = msg;
	if (select->vsi_id != vf->vsi.vsi_num ||
	    select->rx_queues == 0 || select->tx_queues == 0) {
		FUNC1(pf, vf, VIRTCHNL_OP_DISABLE_QUEUES,
		    I40E_ERR_PARAM);
		return;
	}

	/* Disable TX rings selected by the VF */
	for (int i = 0; i < 32; i++) {
		if ((1 << i) & select->tx_queues) {
			/* Warn if queue is out of VF allocation range */
			if (i >= vf->vsi.num_tx_queues) {
				FUNC0(pf->dev, "VF %d: TX ring %d is outside of VF VSI allocation!\n",
				    vf->vf_num, i);
				break;
			}
			/* Skip this queue if it hasn't been configured */
			if (!FUNC5(&vf->qtag, i, true))
				continue;
			/* Warn if this queue is already marked as disabled */
			if (!FUNC6(&vf->qtag, i, true)) {
				FUNC2(pf, "VF %d: TX ring %d is already disabled!\n",
				    vf->vf_num, i);
				continue;
			}
			error = FUNC4(pf, &vf->qtag, i);
			if (error)
				break;
			else
				FUNC7(&vf->qtag, i, true);
		}
	}

	/* Enable RX rings selected by the VF */
	for (int i = 0; i < 32; i++) {
		if ((1 << i) & select->rx_queues) {
			/* Warn if queue is out of VF allocation range */
			if (i >= vf->vsi.num_rx_queues) {
				FUNC0(pf->dev, "VF %d: RX ring %d is outside of VF VSI allocation!\n",
				    vf->vf_num, i);
				break;
			}
			/* Skip this queue if it hasn't been configured */
			if (!FUNC5(&vf->qtag, i, false))
				continue;
			/* Warn if this queue is already marked as disabled */
			if (!FUNC6(&vf->qtag, i, false)) {
				FUNC2(pf, "VF %d: RX ring %d is already disabled!\n",
				    vf->vf_num, i);
				continue;
			}
			error = FUNC3(pf, &vf->qtag, i);
			if (error)
				break;
			else
				FUNC7(&vf->qtag, i, false);
		}
	}

	if (error) {
		FUNC1(pf, vf, VIRTCHNL_OP_DISABLE_QUEUES,
		    I40E_ERR_TIMEOUT);
		return;
	}

	FUNC8(pf, vf, VIRTCHNL_OP_DISABLE_QUEUES);
}