
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_ng_iface_unit ;
 int new_unrhdr (int ,int,int *) ;

__attribute__((used)) static void
vnet_ng_iface_init(const void *unused)
{

 V_ng_iface_unit = new_unrhdr(0, 0xffff, ((void*)0));
}
