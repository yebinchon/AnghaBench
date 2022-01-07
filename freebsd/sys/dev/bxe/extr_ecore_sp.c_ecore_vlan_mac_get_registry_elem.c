
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ecore_vlan_mac_registry_elem {int vlan_mac_flags; int u; int cam_offset; } ;
struct ecore_vlan_mac_obj {struct ecore_vlan_mac_registry_elem* (* check_del ) (struct bxe_softc*,struct ecore_vlan_mac_obj*,int *) ;int (* get_cam_offset ) (struct ecore_vlan_mac_obj*,int *) ;} ;
struct TYPE_3__ {int cmd; int u; int vlan_mac_flags; } ;
struct TYPE_4__ {TYPE_1__ vlan_mac; } ;
struct ecore_exeq_elem {TYPE_2__ cmd_data; } ;
struct bxe_softc {int dummy; } ;
typedef enum ecore_vlan_mac_cmd { ____Placeholder_ecore_vlan_mac_cmd } ecore_vlan_mac_cmd ;


 int ECORE_DBG_BREAK_IF (int) ;
 int ECORE_FREE (struct bxe_softc*,struct ecore_vlan_mac_registry_elem*,int) ;
 int ECORE_INVAL ;
 int ECORE_MEMCPY (int *,int *,int) ;
 int ECORE_MSG (struct bxe_softc*,char*,int ) ;
 int ECORE_NOMEM ;
 int ECORE_SUCCESS ;
 int ECORE_VLAN_MAC_ADD ;
 int ECORE_VLAN_MAC_MOVE ;
 struct ecore_vlan_mac_registry_elem* ECORE_ZALLOC (int,int ,struct bxe_softc*) ;
 int GFP_ATOMIC ;
 int stub1 (struct ecore_vlan_mac_obj*,int *) ;
 struct ecore_vlan_mac_registry_elem* stub2 (struct bxe_softc*,struct ecore_vlan_mac_obj*,int *) ;

__attribute__((used)) static inline int ecore_vlan_mac_get_registry_elem(
 struct bxe_softc *sc,
 struct ecore_vlan_mac_obj *o,
 struct ecore_exeq_elem *elem,
 bool restore,
 struct ecore_vlan_mac_registry_elem **re)
{
 enum ecore_vlan_mac_cmd cmd = elem->cmd_data.vlan_mac.cmd;
 struct ecore_vlan_mac_registry_elem *reg_elem;


 if (!restore &&
     ((cmd == ECORE_VLAN_MAC_ADD) || (cmd == ECORE_VLAN_MAC_MOVE))) {
  reg_elem = ECORE_ZALLOC(sizeof(*reg_elem), GFP_ATOMIC, sc);
  if (!reg_elem)
   return ECORE_NOMEM;


  if (!o->get_cam_offset(o, &reg_elem->cam_offset)) {



   ECORE_DBG_BREAK_IF(1);
   ECORE_FREE(sc, reg_elem, sizeof(*reg_elem));
   return ECORE_INVAL;
  }

  ECORE_MSG(sc, "Got cam offset %d\n", reg_elem->cam_offset);


  ECORE_MEMCPY(&reg_elem->u, &elem->cmd_data.vlan_mac.u,
     sizeof(reg_elem->u));


  reg_elem->vlan_mac_flags =
   elem->cmd_data.vlan_mac.vlan_mac_flags;
 } else
  reg_elem = o->check_del(sc, o, &elem->cmd_data.vlan_mac.u);

 *re = reg_elem;
 return ECORE_SUCCESS;
}
