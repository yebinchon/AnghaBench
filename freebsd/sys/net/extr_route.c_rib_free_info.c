
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_addrinfo {int rti_ifp; } ;


 int if_rele (int ) ;

void
rib_free_info(struct rt_addrinfo *info)
{

 if_rele(info->rti_ifp);
}
