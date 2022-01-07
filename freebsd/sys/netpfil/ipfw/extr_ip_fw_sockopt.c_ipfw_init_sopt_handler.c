
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CTL3_LOCK_INIT () ;
 int IPFW_ADD_SOPT_HANDLER (int,int ) ;
 int scodes ;

void
ipfw_init_sopt_handler()
{

 CTL3_LOCK_INIT();
 IPFW_ADD_SOPT_HANDLER(1, scodes);
}
