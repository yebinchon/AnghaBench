
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jailparam {scalar_t__ jp_valuelen; int jp_name; } ;


 int AF_INET ;
 int AF_INET6 ;
 int PRINT_NAMEVAL ;
 int PRINT_QUOTED ;


 int emit_ip_addr_list (int ,int ,struct jailparam*) ;
 int strcmp (int ,char*) ;
 int xo_emit (char*) ;
 int xo_get_style (int *) ;

__attribute__((used)) static int
special_print(int pflags, struct jailparam *param)
{
 int ip_as_list;

 switch (xo_get_style(((void*)0))) {
 case 129:
 case 128:
  ip_as_list = 1;
  break;
 default:
  ip_as_list = 0;
 }

 if (!ip_as_list && param->jp_valuelen == 0) {
  if (pflags & PRINT_QUOTED)
   xo_emit("{P:\"\"}");
  else if (!(pflags & PRINT_NAMEVAL))
   xo_emit("{P:-}");
 } else if (ip_as_list && !strcmp(param->jp_name, "ip4.addr")) {
  emit_ip_addr_list(AF_INET, param->jp_name, param);
 } else if (ip_as_list && !strcmp(param->jp_name, "ip6.addr")) {
  emit_ip_addr_list(AF_INET6, param->jp_name, param);
 } else {
  return 0;
 }

 return 1;
}
