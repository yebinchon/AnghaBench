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
struct TYPE_2__ {int vf_id; int loopback_supported; int /*<<< orphan*/  node_id; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  tns_mode; int /*<<< orphan*/  msg; } ;
union nic_mbx {TYPE_1__ nic_cfg; } ;
typedef  int /*<<< orphan*/  uint8_t ;
struct nicpf {int flags; int /*<<< orphan*/  node; int /*<<< orphan*/ * vf_lmac_map; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETHER_ADDR_LEN ; 
 int MAX_LMAC ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NIC_MBOX_MSG_READY ; 
 int /*<<< orphan*/  NIC_TNS_BYPASS_MODE ; 
 int NIC_TNS_ENABLED ; 
 int /*<<< orphan*/  NIC_TNS_MODE ; 
 char* FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nicpf*,int,union nic_mbx*) ; 

__attribute__((used)) static void
FUNC5(struct nicpf *nic, int vf)
{
	union nic_mbx mbx = {};
	int bgx_idx, lmac;
	const char *mac;

	mbx.nic_cfg.msg = NIC_MBOX_MSG_READY;
	mbx.nic_cfg.vf_id = vf;

	if (nic->flags & NIC_TNS_ENABLED)
		mbx.nic_cfg.tns_mode = NIC_TNS_MODE;
	else
		mbx.nic_cfg.tns_mode = NIC_TNS_BYPASS_MODE;

	if (vf < MAX_LMAC) {
		bgx_idx = FUNC0(nic->vf_lmac_map[vf]);
		lmac = FUNC1(nic->vf_lmac_map[vf]);

		mac = FUNC2(nic->node, bgx_idx, lmac);
		if (mac) {
			FUNC3((uint8_t *)&mbx.nic_cfg.mac_addr, mac,
			    ETHER_ADDR_LEN);
		}
	}
	mbx.nic_cfg.node_id = nic->node;

	mbx.nic_cfg.loopback_supported = vf < MAX_LMAC;

	FUNC4(nic, vf, &mbx);
}