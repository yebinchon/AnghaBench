
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ecore_hwfn {int p_dpc_ptt; } ;
struct dbg_attn_block_result {int dummy; } ;
typedef enum dbg_status { ____Placeholder_dbg_status } dbg_status ;
typedef enum dbg_attn_type { ____Placeholder_dbg_attn_type } dbg_attn_type ;
typedef enum block_id { ____Placeholder_block_id } block_id ;
typedef int attn_results ;


 int DBG_STATUS_OK ;
 int DP_NOTICE (struct ecore_hwfn*,int,char*,int) ;
 int OSAL_MEMSET (struct dbg_attn_block_result*,int ,int) ;
 int ecore_dbg_get_status_str (int) ;
 int ecore_dbg_parse_attn (struct ecore_hwfn*,struct dbg_attn_block_result*) ;
 int ecore_dbg_print_attn (struct ecore_hwfn*,struct dbg_attn_block_result*) ;
 int ecore_dbg_read_attn (struct ecore_hwfn*,int ,int,int,int,struct dbg_attn_block_result*) ;

__attribute__((used)) static void ecore_int_attn_print(struct ecore_hwfn *p_hwfn,
     enum block_id id, enum dbg_attn_type type,
     bool b_clear)
{
 struct dbg_attn_block_result attn_results;
 enum dbg_status status;

 OSAL_MEMSET(&attn_results, 0, sizeof(attn_results));

 status = ecore_dbg_read_attn(p_hwfn, p_hwfn->p_dpc_ptt, id, type,
         b_clear, &attn_results);
 if (status != DBG_STATUS_OK)
  DP_NOTICE(p_hwfn, 1,
     "Failed to parse attention information [status: %d]\n",
     status);
 else
  ecore_dbg_print_attn(p_hwfn, &attn_results);

}
