
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct ecore_ptt {int dummy; } ;
struct ecore_hwfn {int dummy; } ;
struct ecore_dcbx_results {int dummy; } ;
typedef enum ecore_pci_personality { ____Placeholder_ecore_pci_personality } ecore_pci_personality ;
typedef enum dcbx_protocol_type { ____Placeholder_dcbx_protocol_type } dcbx_protocol_type ;
struct TYPE_3__ {int id; int personality; } ;


 int OSAL_ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* ecore_dcbx_app_update ;
 int ecore_dcbx_set_params (struct ecore_dcbx_results*,struct ecore_hwfn*,struct ecore_ptt*,int,int ,int ,int,int) ;

__attribute__((used)) static void
ecore_dcbx_update_app_info(struct ecore_dcbx_results *p_data,
      struct ecore_hwfn *p_hwfn, struct ecore_ptt *p_ptt,
      bool enable, u8 prio, u8 tc,
      enum dcbx_protocol_type type)
{
 enum ecore_pci_personality personality;
 enum dcbx_protocol_type id;
 int i;

 for (i = 0; i < OSAL_ARRAY_SIZE(ecore_dcbx_app_update); i++) {
  id = ecore_dcbx_app_update[i].id;

  if (type != id)
   continue;

  personality = ecore_dcbx_app_update[i].personality;

  ecore_dcbx_set_params(p_data, p_hwfn, p_ptt, enable,
          prio, tc, type, personality);
 }
}
