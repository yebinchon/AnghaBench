
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ecore_hwfn {int dummy; } ;
struct TYPE_2__ {int* prio; void* enabled; void* max_tc; void* willing; } ;
struct ecore_dcbx_params {TYPE_1__ pfc; } ;


 int DCBX_PFC_CAPS ;
 int DCBX_PFC_ENABLED ;
 int DCBX_PFC_PRI_EN_BITMAP ;
 int DCBX_PFC_PRI_EN_BITMAP_PRI_0 ;
 int DCBX_PFC_PRI_EN_BITMAP_PRI_1 ;
 int DCBX_PFC_PRI_EN_BITMAP_PRI_2 ;
 int DCBX_PFC_PRI_EN_BITMAP_PRI_3 ;
 int DCBX_PFC_PRI_EN_BITMAP_PRI_4 ;
 int DCBX_PFC_PRI_EN_BITMAP_PRI_5 ;
 int DCBX_PFC_PRI_EN_BITMAP_PRI_6 ;
 int DCBX_PFC_PRI_EN_BITMAP_PRI_7 ;
 int DCBX_PFC_WILLING ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,void*,int,void*,void*) ;
 int ECORE_MSG_DCB ;
 void* GET_MFW_FIELD (int ,int ) ;

__attribute__((used)) static void
ecore_dcbx_get_pfc_data(struct ecore_hwfn *p_hwfn,
   u32 pfc, struct ecore_dcbx_params *p_params)
{
 u8 pfc_map;

 p_params->pfc.willing = GET_MFW_FIELD(pfc, DCBX_PFC_WILLING);
 p_params->pfc.max_tc = GET_MFW_FIELD(pfc, DCBX_PFC_CAPS);
 p_params->pfc.enabled = GET_MFW_FIELD(pfc, DCBX_PFC_ENABLED);
 pfc_map = GET_MFW_FIELD(pfc, DCBX_PFC_PRI_EN_BITMAP);
 p_params->pfc.prio[0] = !!(pfc_map & DCBX_PFC_PRI_EN_BITMAP_PRI_0);
 p_params->pfc.prio[1] = !!(pfc_map & DCBX_PFC_PRI_EN_BITMAP_PRI_1);
 p_params->pfc.prio[2] = !!(pfc_map & DCBX_PFC_PRI_EN_BITMAP_PRI_2);
 p_params->pfc.prio[3] = !!(pfc_map & DCBX_PFC_PRI_EN_BITMAP_PRI_3);
 p_params->pfc.prio[4] = !!(pfc_map & DCBX_PFC_PRI_EN_BITMAP_PRI_4);
 p_params->pfc.prio[5] = !!(pfc_map & DCBX_PFC_PRI_EN_BITMAP_PRI_5);
 p_params->pfc.prio[6] = !!(pfc_map & DCBX_PFC_PRI_EN_BITMAP_PRI_6);
 p_params->pfc.prio[7] = !!(pfc_map & DCBX_PFC_PRI_EN_BITMAP_PRI_7);

 DP_VERBOSE(p_hwfn, ECORE_MSG_DCB,
     "PFC params: willing %d, pfc_bitmap %u max_tc = %u enabled = %d\n",
     p_params->pfc.willing, pfc_map, p_params->pfc.max_tc,
     p_params->pfc.enabled);
}
