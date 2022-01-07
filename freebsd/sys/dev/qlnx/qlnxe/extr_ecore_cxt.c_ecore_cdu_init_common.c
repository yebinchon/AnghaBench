
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct ecore_hwfn {TYPE_3__* p_cxt_mngr; } ;
struct TYPE_6__ {int* task_type_size; TYPE_2__* clients; } ;
struct TYPE_4__ {int val; } ;
struct TYPE_5__ {TYPE_1__ p_size; } ;


 int CDUC_BLOCK_WASTE ;
 int CDUC_CXT_SIZE ;
 scalar_t__ CDUC_NCIB ;
 int CDUT_TYPE0_BLOCK_WASTE ;
 scalar_t__ CDUT_TYPE0_CXT_SIZE ;
 int CDUT_TYPE0_NCIB ;
 int CDUT_TYPE1_BLOCK_WASTE ;
 scalar_t__ CDUT_TYPE1_CXT_SIZE ;
 int CDUT_TYPE1_NCIB ;
 int CDU_REG_CID_ADDR_PARAMS_RT_OFFSET ;
 int CDU_REG_SEGMENT0_PARAMS_RT_OFFSET ;
 int CDU_REG_SEGMENT1_PARAMS_RT_OFFSET ;
 int CONN_CXT_SIZE (struct ecore_hwfn*) ;
 size_t ILT_CLI_CDUC ;
 size_t ILT_CLI_CDUT ;
 int ILT_PAGE_IN_BYTES (int) ;
 int SET_FIELD (int,int,int) ;
 int STORE_RT_REG (struct ecore_hwfn*,int ,int) ;

__attribute__((used)) static void ecore_cdu_init_common(struct ecore_hwfn *p_hwfn)
{
 u32 page_sz, elems_per_page, block_waste, cxt_size, cdu_params = 0;


 page_sz = p_hwfn->p_cxt_mngr->clients[ILT_CLI_CDUC].p_size.val;
 cxt_size = CONN_CXT_SIZE(p_hwfn);
 elems_per_page = ILT_PAGE_IN_BYTES(page_sz) / cxt_size;
 block_waste = ILT_PAGE_IN_BYTES(page_sz) - elems_per_page * cxt_size;

 SET_FIELD(cdu_params, CDUC_CXT_SIZE, cxt_size);
 SET_FIELD(cdu_params, CDUC_BLOCK_WASTE, block_waste);
 SET_FIELD(cdu_params, (u32)CDUC_NCIB, elems_per_page);
 STORE_RT_REG(p_hwfn, CDU_REG_CID_ADDR_PARAMS_RT_OFFSET, cdu_params);


 page_sz = p_hwfn->p_cxt_mngr->clients[ILT_CLI_CDUT].p_size.val;
 cxt_size = p_hwfn->p_cxt_mngr->task_type_size[0];
 elems_per_page = ILT_PAGE_IN_BYTES(page_sz) / cxt_size;
 block_waste = ILT_PAGE_IN_BYTES(page_sz) - elems_per_page * cxt_size;


 cdu_params = 0;
 SET_FIELD(cdu_params, (u32)CDUT_TYPE0_CXT_SIZE, (cxt_size >> 3));
 SET_FIELD(cdu_params, CDUT_TYPE0_BLOCK_WASTE, (block_waste >> 3));
 SET_FIELD(cdu_params, CDUT_TYPE0_NCIB, elems_per_page);
 STORE_RT_REG(p_hwfn, CDU_REG_SEGMENT0_PARAMS_RT_OFFSET, cdu_params);


 cxt_size = p_hwfn->p_cxt_mngr->task_type_size[1];
 elems_per_page = ILT_PAGE_IN_BYTES(page_sz) / cxt_size;
 block_waste = ILT_PAGE_IN_BYTES(page_sz) - elems_per_page * cxt_size;


 cdu_params = 0;
 SET_FIELD(cdu_params, (u32)CDUT_TYPE1_CXT_SIZE, (cxt_size >> 3));
 SET_FIELD(cdu_params, CDUT_TYPE1_BLOCK_WASTE, (block_waste >> 3));
 SET_FIELD(cdu_params, CDUT_TYPE1_NCIB, elems_per_page);
 STORE_RT_REG(p_hwfn, CDU_REG_SEGMENT1_PARAMS_RT_OFFSET, cdu_params);
}
