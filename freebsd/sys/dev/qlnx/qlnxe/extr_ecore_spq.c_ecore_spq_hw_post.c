
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct TYPE_4__ {void* echo; } ;
struct slow_path_element {TYPE_2__ hdr; } ;
struct ecore_spq_entry {struct slow_path_element elem; } ;
struct core_db_data {int agg_flags; int params; void* spq_prod; } ;
struct ecore_spq {int cid; int db_addr_offset; struct core_db_data db_data; } ;
struct ecore_hwfn {int p_dev; TYPE_1__* p_spq; } ;
struct ecore_chain {int dummy; } ;
typedef enum _ecore_status_t { ____Placeholder__ecore_status_t } _ecore_status_t ;
struct TYPE_3__ {struct ecore_chain chain; } ;


 int DOORBELL (struct ecore_hwfn*,int ,int ) ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*) ;
 int DP_VERBOSE (struct ecore_hwfn*,int ,char*,int ,int ,int ,int ,int ) ;
 int ECORE_INVAL ;
 int ECORE_MSG_SPQ ;
 int ECORE_SUCCESS ;
 void* OSAL_CPU_TO_LE16 (int ) ;
 int OSAL_WMB (int ) ;
 int ecore_chain_get_prod_idx (struct ecore_chain*) ;
 struct slow_path_element* ecore_chain_produce (struct ecore_chain*) ;

__attribute__((used)) static enum _ecore_status_t ecore_spq_hw_post(struct ecore_hwfn *p_hwfn,
           struct ecore_spq *p_spq,
           struct ecore_spq_entry *p_ent)
{
 struct ecore_chain *p_chain = &p_hwfn->p_spq->chain;
 struct core_db_data *p_db_data = &p_spq->db_data;
 u16 echo = ecore_chain_get_prod_idx(p_chain);
 struct slow_path_element *elem;

 p_ent->elem.hdr.echo = OSAL_CPU_TO_LE16(echo);
 elem = ecore_chain_produce(p_chain);
 if (!elem) {
  DP_NOTICE(p_hwfn, 1, "Failed to produce from SPQ chain\n");
  return ECORE_INVAL;
 }

 *elem = p_ent->elem;

 p_db_data->spq_prod =
  OSAL_CPU_TO_LE16(ecore_chain_get_prod_idx(p_chain));


 OSAL_WMB(p_hwfn->p_dev);

 DOORBELL(p_hwfn, p_spq->db_addr_offset, *(u32 *)p_db_data);


 OSAL_WMB(p_hwfn->p_dev);

 DP_VERBOSE(p_hwfn, ECORE_MSG_SPQ,
     "Doorbelled [0x%08x, CID 0x%08x] with Flags: %02x agg_params: %02x, prod: %04x\n",
     p_spq->db_addr_offset, p_spq->cid, p_db_data->params,
     p_db_data->agg_flags, ecore_chain_get_prod_idx(p_chain));

 return ECORE_SUCCESS;
}
