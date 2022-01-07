
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct ecore_hwfn {int dummy; } ;
struct block_defs {scalar_t__ storm_id; scalar_t__ associated_to_storm; } ;
struct big_ram_defs {size_t mem_group_id; size_t ram_mem_group_id; int grc_param; } ;
typedef enum dbg_storms { ____Placeholder_dbg_storms } dbg_storms ;
typedef enum block_id { ____Placeholder_block_id } block_id ;


 int DBG_GRC_PARAM_DUMP_CAU ;
 int DBG_GRC_PARAM_DUMP_CFC ;
 int DBG_GRC_PARAM_DUMP_CM ;
 int DBG_GRC_PARAM_DUMP_CM_CTX ;
 int DBG_GRC_PARAM_DUMP_DIF ;
 int DBG_GRC_PARAM_DUMP_DMAE ;
 int DBG_GRC_PARAM_DUMP_IGU ;
 int DBG_GRC_PARAM_DUMP_IOR ;
 int DBG_GRC_PARAM_DUMP_MULD ;
 int DBG_GRC_PARAM_DUMP_PBUF ;
 int DBG_GRC_PARAM_DUMP_PRS ;
 int DBG_GRC_PARAM_DUMP_PXP ;
 int DBG_GRC_PARAM_DUMP_QM ;
 int DBG_GRC_PARAM_DUMP_RAM ;
 int DBG_GRC_PARAM_DUMP_SDM ;
 int DBG_GRC_PARAM_DUMP_TM ;
 size_t NUM_BIG_RAM_TYPES ;
 int ecore_grc_is_included (struct ecore_hwfn*,int ) ;
 int ecore_grc_is_storm_included (struct ecore_hwfn*,int) ;
 struct big_ram_defs* s_big_ram_defs ;
 struct block_defs** s_block_defs ;

__attribute__((used)) static bool ecore_grc_is_mem_included(struct ecore_hwfn *p_hwfn,
           enum block_id block_id,
           u8 mem_group_id)
{
 struct block_defs *block = s_block_defs[block_id];
 u8 i;


 if (block->associated_to_storm &&
  !ecore_grc_is_storm_included(p_hwfn, (enum dbg_storms)block->storm_id))
  return 0;

 for (i = 0; i < NUM_BIG_RAM_TYPES; i++) {
  struct big_ram_defs *big_ram = &s_big_ram_defs[i];

  if (mem_group_id == big_ram->mem_group_id || mem_group_id == big_ram->ram_mem_group_id)
   return ecore_grc_is_included(p_hwfn, big_ram->grc_param);
 }

 switch (mem_group_id) {
 case 136:
 case 135:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_PXP);
 case 133:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_RAM);
 case 138:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_PBUF);
 case 149:
 case 147:
 case 148:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_CAU);
 case 134:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_QM);
 case 146:
 case 144:
 case 130:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_CFC) || ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_CM_CTX);
 case 142:
 case 141:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_IGU);
 case 139:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_MULD);
 case 137:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_PRS);
 case 143:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_DMAE);
 case 128:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_TM);
 case 131:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_SDM);
 case 129:
 case 132:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_DIF);
 case 145:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_CM);
 case 140:
  return ecore_grc_is_included(p_hwfn, DBG_GRC_PARAM_DUMP_IOR);
 default:
  return 1;
 }
}
