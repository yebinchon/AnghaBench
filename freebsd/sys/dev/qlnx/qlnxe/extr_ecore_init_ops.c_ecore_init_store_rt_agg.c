
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int* init_val; int* b_valid; } ;
struct ecore_hwfn {TYPE_1__ rt_data; } ;
typedef int osal_size_t ;


 int DP_ERR (struct ecore_hwfn*,char*,int,int,int) ;
 int RUNTIME_ARRAY_SIZE ;

void ecore_init_store_rt_agg(struct ecore_hwfn *p_hwfn,
        u32 rt_offset, u32 *p_val,
        osal_size_t size)
{
 osal_size_t i;

 if ((rt_offset + size - 1) >= RUNTIME_ARRAY_SIZE) {
  DP_ERR(p_hwfn,
         "Avoid storing values in rt_data at indices %u-%u since RUNTIME_ARRAY_SIZE is %u!\n",
         rt_offset, (u32)(rt_offset + size - 1),
         RUNTIME_ARRAY_SIZE);
  return;
 }

 for (i = 0; i < size / sizeof(u32); i++) {
  p_hwfn->rt_data.init_val[rt_offset + i] = p_val[i];
  p_hwfn->rt_data.b_valid[rt_offset + i] = 1;

 }
}
