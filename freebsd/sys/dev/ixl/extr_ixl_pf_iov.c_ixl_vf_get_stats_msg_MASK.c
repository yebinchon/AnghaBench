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
struct virtchnl_queue_select {scalar_t__ vsi_id; } ;
struct TYPE_2__ {scalar_t__ vsi_num; int /*<<< orphan*/  eth_stats; } ;
struct ixl_vf {TYPE_1__ vsi; } ;
struct ixl_pf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 int /*<<< orphan*/  I40E_SUCCESS ; 
 int /*<<< orphan*/  VIRTCHNL_OP_GET_STATS ; 
 int /*<<< orphan*/  FUNC0 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3(struct ixl_pf *pf, struct ixl_vf *vf, void *msg,
    uint16_t msg_size)
{
	struct virtchnl_queue_select *queue;

	if (msg_size != sizeof(*queue)) {
		FUNC0(pf, vf, VIRTCHNL_OP_GET_STATS,
		    I40E_ERR_PARAM);
		return;
	}

	queue = msg;
	if (queue->vsi_id != vf->vsi.vsi_num) {
		FUNC0(pf, vf, VIRTCHNL_OP_GET_STATS,
		    I40E_ERR_PARAM);
		return;
	}

	FUNC2(&vf->vsi);

	FUNC1(pf, vf, VIRTCHNL_OP_GET_STATS,
	    I40E_SUCCESS, &vf->vsi.eth_stats, sizeof(vf->vsi.eth_stats));
}