
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int if_ctx_t ;


 int iflib_get_softc (int ) ;
 int vmxnet3_update_vlan_filter (int ,int ,int ) ;

__attribute__((used)) static void
vmxnet3_vlan_unregister(if_ctx_t ctx, uint16_t tag)
{

 vmxnet3_update_vlan_filter(iflib_get_softc(ctx), 0, tag);
}
