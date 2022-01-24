#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct virtchnl_vector_map {scalar_t__ vector_id; scalar_t__ vsi_id; scalar_t__ rxq_map; scalar_t__ txq_map; scalar_t__ rxitr_idx; scalar_t__ txitr_idx; } ;
struct virtchnl_irq_map_info {int num_vectors; struct virtchnl_vector_map* vecmap; } ;
struct TYPE_4__ {scalar_t__ vsi_num; int num_rx_queues; int num_tx_queues; } ;
struct ixl_vf {TYPE_2__ vsi; } ;
struct TYPE_3__ {scalar_t__ num_msix_vectors_vf; } ;
struct i40e_hw {TYPE_1__ func_caps; } ;
struct ixl_pf {struct i40e_hw hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 scalar_t__ IXL_MAX_ITR_IDX ; 
 int /*<<< orphan*/  VIRTCHNL_OP_CONFIG_IRQ_MAP ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ixl_pf*,struct ixl_vf*,struct virtchnl_vector_map*) ; 

__attribute__((used)) static void
FUNC4(struct ixl_pf *pf, struct ixl_vf *vf, void *msg,
    uint16_t msg_size)
{
	struct virtchnl_irq_map_info *map;
	struct virtchnl_vector_map *vector;
	struct i40e_hw *hw;
	int i, largest_txq, largest_rxq;

	hw = &pf->hw;

	if (msg_size < sizeof(*map)) {
		FUNC1(pf, vf, VIRTCHNL_OP_CONFIG_IRQ_MAP,
		    I40E_ERR_PARAM);
		return;
	}

	map = msg;
	if (map->num_vectors == 0) {
		FUNC1(pf, vf, VIRTCHNL_OP_CONFIG_IRQ_MAP,
		    I40E_ERR_PARAM);
		return;
	}

	if (msg_size != sizeof(*map) + map->num_vectors * sizeof(*vector)) {
		FUNC1(pf, vf, VIRTCHNL_OP_CONFIG_IRQ_MAP,
		    I40E_ERR_PARAM);
		return;
	}

	for (i = 0; i < map->num_vectors; i++) {
		vector = &map->vecmap[i];

		if ((vector->vector_id >= hw->func_caps.num_msix_vectors_vf) ||
		    vector->vsi_id != vf->vsi.vsi_num) {
			FUNC1(pf, vf,
			    VIRTCHNL_OP_CONFIG_IRQ_MAP, I40E_ERR_PARAM);
			return;
		}

		if (vector->rxq_map != 0) {
			largest_rxq = FUNC0(vector->rxq_map) - 1;
			if (largest_rxq >= vf->vsi.num_rx_queues) {
				FUNC1(pf, vf,
				    VIRTCHNL_OP_CONFIG_IRQ_MAP,
				    I40E_ERR_PARAM);
				return;
			}
		}

		if (vector->txq_map != 0) {
			largest_txq = FUNC0(vector->txq_map) - 1;
			if (largest_txq >= vf->vsi.num_tx_queues) {
				FUNC1(pf, vf,
				    VIRTCHNL_OP_CONFIG_IRQ_MAP,
				    I40E_ERR_PARAM);
				return;
			}
		}

		if (vector->rxitr_idx > IXL_MAX_ITR_IDX ||
		    vector->txitr_idx > IXL_MAX_ITR_IDX) {
			FUNC1(pf, vf,
			    VIRTCHNL_OP_CONFIG_IRQ_MAP,
			    I40E_ERR_PARAM);
			return;
		}

		FUNC3(pf, vf, vector);
	}

	FUNC2(pf, vf, VIRTCHNL_OP_CONFIG_IRQ_MAP);
}