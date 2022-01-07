
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct protocol_dcb_data {int dcb_dont_add_vlan0; int dscp_val; int dscp_enable_flag; int dcb_tc; int dcb_priority; int dcb_enable_flag; } ;
struct ecore_dcbx_results {TYPE_1__* arr; } ;
typedef enum dcbx_protocol_type { ____Placeholder_dcbx_protocol_type } dcbx_protocol_type ;
struct TYPE_2__ {int dont_add_vlan0; int dscp_val; int dscp_enable; int tc; int priority; int enable; } ;



__attribute__((used)) static void ecore_dcbx_update_protocol_data(struct protocol_dcb_data *p_data,
         struct ecore_dcbx_results *p_src,
         enum dcbx_protocol_type type)
{
 p_data->dcb_enable_flag = p_src->arr[type].enable;
 p_data->dcb_priority = p_src->arr[type].priority;
 p_data->dcb_tc = p_src->arr[type].tc;
 p_data->dscp_enable_flag = p_src->arr[type].dscp_enable;
 p_data->dscp_val = p_src->arr[type].dscp_val;
 p_data->dcb_dont_add_vlan0 = p_src->arr[type].dont_add_vlan0;
}
