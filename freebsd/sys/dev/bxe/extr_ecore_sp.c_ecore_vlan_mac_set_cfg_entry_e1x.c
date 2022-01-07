
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct mac_configuration_entry {int flags; int lsb_mac_addr; int middle_mac_addr; int msb_mac_addr; int vlan_id; int pf_id; int clients_bit_vector; } ;
struct ecore_raw_obj {int cl_id; int func_id; } ;
struct ecore_vlan_mac_obj {struct ecore_raw_obj raw; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_CPU_TO_LE16 (int ) ;
 int ECORE_CPU_TO_LE32 (int) ;
 int ECORE_SET_FLAG (int ,int ,int) ;
 int MAC_CONFIGURATION_ENTRY_ACTION_TYPE ;
 int MAC_CONFIGURATION_ENTRY_VLAN_FILTERING_MODE ;
 int T_ETH_MAC_COMMAND_INVALIDATE ;
 int T_ETH_MAC_COMMAND_SET ;
 int ecore_set_fw_mac_addr (int *,int *,int *,int *) ;

__attribute__((used)) static inline void ecore_vlan_mac_set_cfg_entry_e1x(struct bxe_softc *sc,
 struct ecore_vlan_mac_obj *o, bool add, int opcode, uint8_t *mac,
 uint16_t vlan_id, struct mac_configuration_entry *cfg_entry)
{
 struct ecore_raw_obj *r = &o->raw;
 uint32_t cl_bit_vec = (1 << r->cl_id);

 cfg_entry->clients_bit_vector = ECORE_CPU_TO_LE32(cl_bit_vec);
 cfg_entry->pf_id = r->func_id;
 cfg_entry->vlan_id = ECORE_CPU_TO_LE16(vlan_id);

 if (add) {
  ECORE_SET_FLAG(cfg_entry->flags,
          MAC_CONFIGURATION_ENTRY_ACTION_TYPE,
          T_ETH_MAC_COMMAND_SET);
  ECORE_SET_FLAG(cfg_entry->flags,
          MAC_CONFIGURATION_ENTRY_VLAN_FILTERING_MODE,
          opcode);


  ecore_set_fw_mac_addr(&cfg_entry->msb_mac_addr,
          &cfg_entry->middle_mac_addr,
          &cfg_entry->lsb_mac_addr, mac);
 } else
  ECORE_SET_FLAG(cfg_entry->flags,
          MAC_CONFIGURATION_ENTRY_ACTION_TYPE,
          T_ETH_MAC_COMMAND_INVALIDATE);
}
