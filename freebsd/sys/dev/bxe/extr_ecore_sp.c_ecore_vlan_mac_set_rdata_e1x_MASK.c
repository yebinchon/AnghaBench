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
typedef  int /*<<< orphan*/  uint16_t ;
struct mac_configuration_entry {int dummy; } ;
struct mac_configuration_cmd {int /*<<< orphan*/  hdr; struct mac_configuration_entry* config_table; } ;
struct ecore_raw_obj {int /*<<< orphan*/  cl_id; } ;
struct ecore_vlan_mac_obj {struct ecore_raw_obj raw; } ;
struct bxe_softc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct bxe_softc*,struct ecore_vlan_mac_obj*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct mac_configuration_entry*) ; 
 int /*<<< orphan*/  FUNC2 (struct bxe_softc*,struct ecore_vlan_mac_obj*,int,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct bxe_softc *sc,
	struct ecore_vlan_mac_obj *o, int type, int cam_offset, bool add,
	uint8_t *mac, uint16_t vlan_id, int opcode, struct mac_configuration_cmd *config)
{
	struct mac_configuration_entry *cfg_entry = &config->config_table[0];
	struct ecore_raw_obj *raw = &o->raw;

	FUNC2(sc, o, type, cam_offset,
					 &config->hdr);
	FUNC1(sc, o, add, opcode, mac, vlan_id,
					 cfg_entry);

	FUNC0(sc, "%s MAC %02x:%02x:%02x:%02x:%02x:%02x CLID %d CAM offset %d\n",
		  (add ? "setting" : "clearing"),
		  mac[0], mac[1], mac[2], mac[3], mac[4], mac[5], raw->cl_id, cam_offset);
}