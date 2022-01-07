
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPFW_DEL_SOPT_HANDLER (int,int ) ;
 int mtx_destroy (int *) ;
 int scodes ;
 int vnet_mtx ;

void
ipfw_iface_destroy()
{

 IPFW_DEL_SOPT_HANDLER(1, scodes);
 mtx_destroy(&vnet_mtx);
}
