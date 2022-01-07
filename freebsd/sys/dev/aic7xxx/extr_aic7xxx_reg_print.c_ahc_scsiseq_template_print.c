
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int SCSISEQ_TEMPLATE_parse_table ;
 int ahc_print_register (int ,int,char*,int,int ,int *,int ) ;

int
ahc_scsiseq_template_print(u_int regvalue, u_int *cur_col, u_int wrap)
{
 return (ahc_print_register(SCSISEQ_TEMPLATE_parse_table, 6, "SCSISEQ_TEMPLATE",
     0x54, regvalue, cur_col, wrap));
}
