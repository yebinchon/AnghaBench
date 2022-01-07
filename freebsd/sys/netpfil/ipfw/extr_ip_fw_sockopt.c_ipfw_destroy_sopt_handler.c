
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL3_LOCK_DESTROY () ;
 int IPFW_DEL_SOPT_HANDLER (int,int ) ;
 int scodes ;

void
ipfw_destroy_sopt_handler()
{

 IPFW_DEL_SOPT_HANDLER(1, scodes);
 CTL3_LOCK_DESTROY();
}
