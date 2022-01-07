
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum resource_id_enum { ____Placeholder_resource_id_enum } resource_id_enum ;
typedef enum ecore_resources { ____Placeholder_ecore_resources } ecore_resources ;
 int RESOURCE_BDQ_E ;
 int RESOURCE_CQS_E ;
 int RESOURCE_ILT_E ;
 int RESOURCE_LL2_QUEUE_E ;
 int RESOURCE_NUM_INVALID ;
 int RESOURCE_NUM_L2_QUEUE_E ;
 int RESOURCE_NUM_PQ_E ;
 int RESOURCE_NUM_RL_E ;
 int RESOURCE_NUM_RSS_ENGINES_E ;
 int RESOURCE_NUM_SB_E ;
 int RESOURCE_NUM_VPORT_E ;
 int RESOURCE_RDMA_STATS_QUEUE_E ;
 int RESOURCE_VFC_FILTER_E ;

__attribute__((used)) static enum resource_id_enum
ecore_mcp_get_mfw_res_id(enum ecore_resources res_id)
{
 enum resource_id_enum mfw_res_id = RESOURCE_NUM_INVALID;

 switch (res_id) {
 case 130:
  mfw_res_id = RESOURCE_NUM_SB_E;
  break;
 case 138:
  mfw_res_id = RESOURCE_NUM_L2_QUEUE_E;
  break;
 case 128:
  mfw_res_id = RESOURCE_NUM_VPORT_E;
  break;
 case 131:
  mfw_res_id = RESOURCE_NUM_RSS_ENGINES_E;
  break;
 case 135:
  mfw_res_id = RESOURCE_NUM_PQ_E;
  break;
 case 132:
  mfw_res_id = RESOURCE_NUM_RL_E;
  break;
 case 136:
 case 129:

  mfw_res_id = RESOURCE_VFC_FILTER_E;
  break;
 case 139:
  mfw_res_id = RESOURCE_ILT_E;
  break;
 case 137:
  mfw_res_id = RESOURCE_LL2_QUEUE_E;
  break;
 case 134:
 case 140:

  mfw_res_id = RESOURCE_CQS_E;
  break;
 case 133:
  mfw_res_id = RESOURCE_RDMA_STATS_QUEUE_E;
  break;
 case 141:
  mfw_res_id = RESOURCE_BDQ_E;
  break;
 default:
  break;
 }

 return mfw_res_id;
}
