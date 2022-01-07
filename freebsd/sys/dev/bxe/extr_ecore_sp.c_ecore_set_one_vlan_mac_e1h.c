
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mac_configuration_cmd {int dummy; } ;
struct ecore_raw_obj {scalar_t__ rdata; } ;
struct ecore_vlan_mac_obj {struct ecore_raw_obj raw; } ;
struct TYPE_5__ {int vlan; int mac; } ;
struct TYPE_6__ {TYPE_1__ vlan_mac; } ;
struct TYPE_7__ {scalar_t__ cmd; TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ vlan_mac; } ;
struct ecore_exeq_elem {TYPE_4__ cmd_data; } ;
struct bxe_softc {int dummy; } ;


 int ECORE_FILTER_VLAN_MAC_PENDING ;
 int ECORE_MEMSET (struct mac_configuration_cmd*,int ,int) ;
 scalar_t__ ECORE_VLAN_MAC_ADD ;
 int ETH_VLAN_FILTER_CLASSIFY ;
 int FALSE ;
 int TRUE ;
 int ecore_vlan_mac_set_rdata_e1x (struct bxe_softc*,struct ecore_vlan_mac_obj*,int ,int,int,int ,int ,int ,struct mac_configuration_cmd*) ;

__attribute__((used)) static void ecore_set_one_vlan_mac_e1h(struct bxe_softc *sc,
           struct ecore_vlan_mac_obj *o,
           struct ecore_exeq_elem *elem,
           int rule_idx, int cam_offset)
{
 struct ecore_raw_obj *raw = &o->raw;
 struct mac_configuration_cmd *config =
  (struct mac_configuration_cmd *)(raw->rdata);



 bool add = (elem->cmd_data.vlan_mac.cmd == ECORE_VLAN_MAC_ADD) ?
  TRUE : FALSE;


 ECORE_MEMSET(config, 0, sizeof(*config));

 ecore_vlan_mac_set_rdata_e1x(sc, o, ECORE_FILTER_VLAN_MAC_PENDING,
         cam_offset, add,
         elem->cmd_data.vlan_mac.u.vlan_mac.mac,
         elem->cmd_data.vlan_mac.u.vlan_mac.vlan,
         ETH_VLAN_FILTER_CLASSIFY, config);
}
