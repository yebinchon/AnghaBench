
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ipfw_destroy_obj_rewriter () ;
 int ipfw_destroy_sopt_handler () ;
 int ipfw_iface_destroy () ;
 int printf (char*) ;

__attribute__((used)) static void
ipfw_destroy(void)
{

 ipfw_iface_destroy();
 ipfw_destroy_sopt_handler();
 ipfw_destroy_obj_rewriter();
 printf("IP firewall unloaded\n");
}
