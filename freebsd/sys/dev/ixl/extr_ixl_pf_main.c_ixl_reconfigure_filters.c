
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_vsi {int num_macs; } ;


 int IXL_FILTER_USED ;
 int ixl_add_hw_filters (struct ixl_vsi*,int ,int ) ;

void
ixl_reconfigure_filters(struct ixl_vsi *vsi)
{
 ixl_add_hw_filters(vsi, IXL_FILTER_USED, vsi->num_macs);
}
