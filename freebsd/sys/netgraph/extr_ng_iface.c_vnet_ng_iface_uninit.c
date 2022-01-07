
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_ng_iface_unit ;
 int delete_unrhdr (int ) ;

__attribute__((used)) static void
vnet_ng_iface_uninit(const void *unused)
{

 delete_unrhdr(V_ng_iface_unit);
}
