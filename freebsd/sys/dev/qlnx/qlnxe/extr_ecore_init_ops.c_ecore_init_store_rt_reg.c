
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {size_t* init_val; int* b_valid; } ;
struct ecore_hwfn {TYPE_1__ rt_data; } ;


 int DP_ERR (struct ecore_hwfn*,char*,size_t,size_t,size_t) ;
 size_t RUNTIME_ARRAY_SIZE ;

void ecore_init_store_rt_reg(struct ecore_hwfn *p_hwfn,
        u32 rt_offset, u32 val)
{
 if (rt_offset >= RUNTIME_ARRAY_SIZE) {
  DP_ERR(p_hwfn,
         "Avoid storing %u in rt_data at index %u since RUNTIME_ARRAY_SIZE is %u!\n",
         val, rt_offset, RUNTIME_ARRAY_SIZE);
  return;
 }

 p_hwfn->rt_data.init_val[rt_offset] = val;
 p_hwfn->rt_data.b_valid[rt_offset] = 1;
}
