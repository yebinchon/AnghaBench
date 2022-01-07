
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPFW_ADD_SOPT_HANDLER (int,int ) ;
 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;
 int scodes ;
 int vnet_mtx ;

int
ipfw_iface_init()
{

 mtx_init(&vnet_mtx, "IPFW ifhandler mtx", ((void*)0), MTX_DEF);
 IPFW_ADD_SOPT_HANDLER(1, scodes);
 return (0);
}
