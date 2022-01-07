
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;
typedef int u16 ;


 int OSAL_MEMSET (size_t*,int ,int ) ;
 size_t ecore_calc_cdu_validation_byte (size_t,int,int ) ;
 size_t** task_region_offsets ;

void ecore_calc_task_ctx_validation(void *p_ctx_mem, u16 ctx_size, u8 ctx_type, u32 tid)
{
 u8 *p_ctx, *region1_val_ptr;

 p_ctx = (u8* const)p_ctx_mem;
 region1_val_ptr = &p_ctx[task_region_offsets[0][ctx_type]];

 OSAL_MEMSET(p_ctx, 0, ctx_size);

 *region1_val_ptr = ecore_calc_cdu_validation_byte(ctx_type, 1, tid);
}
