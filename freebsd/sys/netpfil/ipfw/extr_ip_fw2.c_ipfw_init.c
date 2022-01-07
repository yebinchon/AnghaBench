
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IPFW_TABLES_MAX ;
 scalar_t__ V_fw_verbose ;
 int V_verbose_limit ;
 scalar_t__ default_fw_tables ;
 scalar_t__ default_to_accept ;
 int ipfw_iface_init () ;
 int ipfw_init_obj_rewriter () ;
 int ipfw_init_sopt_handler () ;
 int printf (char*,...) ;

__attribute__((used)) static int
ipfw_init(void)
{
 int error = 0;





 printf("ipfw2 "



  "initialized, divert %s, nat %s, "
  "default to %s, logging ",



  "loadable",




  "loadable",

  default_to_accept ? "accept" : "deny");
 if (V_fw_verbose == 0)
  printf("disabled\n");
 else if (V_verbose_limit == 0)
  printf("unlimited\n");
 else
  printf("limited to %d packets/entry by default\n",
      V_verbose_limit);


 if (default_fw_tables > IPFW_TABLES_MAX)
   default_fw_tables = IPFW_TABLES_MAX;

 ipfw_init_sopt_handler();
 ipfw_init_obj_rewriter();
 ipfw_iface_init();
 return (error);
}
