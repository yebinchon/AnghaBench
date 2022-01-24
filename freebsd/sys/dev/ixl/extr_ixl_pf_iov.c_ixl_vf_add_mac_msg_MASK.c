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
typedef  int uint16_t ;
struct virtchnl_ether_addr_list {int num_elements; scalar_t__ vsi_id; struct virtchnl_ether_addr* list; } ;
struct virtchnl_ether_addr {int /*<<< orphan*/  addr; } ;
struct ixl_vsi {scalar_t__ vsi_num; } ;
struct ixl_vf {struct ixl_vsi vsi; } ;
struct ixl_pf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  I40E_ERR_PARAM ; 
 int /*<<< orphan*/  IXL_VLAN_ANY ; 
 int /*<<< orphan*/  VIRTCHNL_OP_ADD_ETH_ADDR ; 
 int /*<<< orphan*/  FUNC0 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ixl_vsi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ixl_pf*,struct ixl_vf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ixl_vf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct ixl_pf *pf, struct ixl_vf *vf, void *msg,
    uint16_t msg_size)
{
	struct virtchnl_ether_addr_list *addr_list;
	struct virtchnl_ether_addr *addr;
	struct ixl_vsi *vsi;
	int i;
	size_t expected_size;

	vsi = &vf->vsi;

	if (msg_size < sizeof(*addr_list)) {
		FUNC0(pf, vf, VIRTCHNL_OP_ADD_ETH_ADDR,
		    I40E_ERR_PARAM);
		return;
	}

	addr_list = msg;
	expected_size = sizeof(*addr_list) +
	    addr_list->num_elements * sizeof(*addr);

	if (addr_list->num_elements == 0 ||
	    addr_list->vsi_id != vsi->vsi_num ||
	    msg_size != expected_size) {
		FUNC0(pf, vf, VIRTCHNL_OP_ADD_ETH_ADDR,
		    I40E_ERR_PARAM);
		return;
	}

	for (i = 0; i < addr_list->num_elements; i++) {
		if (FUNC3(vf, addr_list->list[i].addr) != 0) {
			FUNC0(pf, vf,
			    VIRTCHNL_OP_ADD_ETH_ADDR, I40E_ERR_PARAM);
			return;
		}
	}

	for (i = 0; i < addr_list->num_elements; i++) {
		addr = &addr_list->list[i];
		FUNC1(vsi, addr->addr, IXL_VLAN_ANY);
	}

	FUNC2(pf, vf, VIRTCHNL_OP_ADD_ETH_ADDR);
}