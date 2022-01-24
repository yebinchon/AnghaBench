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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct mac_configuration_entry {int /*<<< orphan*/  flags; int /*<<< orphan*/  lsb_mac_addr; int /*<<< orphan*/  middle_mac_addr; int /*<<< orphan*/  msb_mac_addr; int /*<<< orphan*/  vlan_id; int /*<<< orphan*/  pf_id; int /*<<< orphan*/  clients_bit_vector; } ;
struct ecore_raw_obj {int cl_id; int /*<<< orphan*/  func_id; } ;
struct ecore_vlan_mac_obj {struct ecore_raw_obj raw; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MAC_CONFIGURATION_ENTRY_ACTION_TYPE ; 
 int /*<<< orphan*/  MAC_CONFIGURATION_ENTRY_VLAN_FILTERING_MODE ; 
 int T_ETH_MAC_COMMAND_INVALIDATE ; 
 int T_ETH_MAC_COMMAND_SET ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct bxe_softc *sc,
	struct ecore_vlan_mac_obj *o, bool add, int opcode, uint8_t *mac,
	uint16_t vlan_id, struct mac_configuration_entry *cfg_entry)
{
	struct ecore_raw_obj *r = &o->raw;
	uint32_t cl_bit_vec = (1 << r->cl_id);

	cfg_entry->clients_bit_vector = FUNC1(cl_bit_vec);
	cfg_entry->pf_id = r->func_id;
	cfg_entry->vlan_id = FUNC0(vlan_id);

	if (add) {
		FUNC2(cfg_entry->flags,
			       MAC_CONFIGURATION_ENTRY_ACTION_TYPE,
			       T_ETH_MAC_COMMAND_SET);
		FUNC2(cfg_entry->flags,
			       MAC_CONFIGURATION_ENTRY_VLAN_FILTERING_MODE,
			       opcode);

		/* Set a MAC in a ramrod data */
		FUNC3(&cfg_entry->msb_mac_addr,
				      &cfg_entry->middle_mac_addr,
				      &cfg_entry->lsb_mac_addr, mac);
	} else
		FUNC2(cfg_entry->flags,
			       MAC_CONFIGURATION_ENTRY_ACTION_TYPE,
			       T_ETH_MAC_COMMAND_INVALIDATE);
}