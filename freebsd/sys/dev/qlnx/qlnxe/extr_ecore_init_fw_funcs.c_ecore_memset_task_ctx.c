
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef int u32 ;


 int OSAL_MEMSET (size_t*,int ,int ) ;
 size_t** task_region_offsets ;

void ecore_memset_task_ctx(void *p_ctx_mem, u32 ctx_size, u8 ctx_type)
{
 u8 *p_ctx, *region1_val_ptr;
 u8 region1_val;

 p_ctx = (u8* const)p_ctx_mem;
 region1_val_ptr = &p_ctx[task_region_offsets[0][ctx_type]];

 region1_val = *region1_val_ptr;

 OSAL_MEMSET(p_ctx, 0, ctx_size);

 *region1_val_ptr = region1_val;
}
