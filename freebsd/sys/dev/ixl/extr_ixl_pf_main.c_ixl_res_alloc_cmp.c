
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_aqc_switch_resource_alloc_element_resp {scalar_t__ resource_type; } ;



int
ixl_res_alloc_cmp(const void *a, const void *b)
{
 const struct i40e_aqc_switch_resource_alloc_element_resp *one, *two;
 one = (const struct i40e_aqc_switch_resource_alloc_element_resp *)a;
 two = (const struct i40e_aqc_switch_resource_alloc_element_resp *)b;

 return ((int)one->resource_type - (int)two->resource_type);
}
