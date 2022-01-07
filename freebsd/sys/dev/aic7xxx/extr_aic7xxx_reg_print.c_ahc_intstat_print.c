
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int INTSTAT_parse_table ;
 int ahc_print_register (int ,int,char*,int,int ,int *,int ) ;

int
ahc_intstat_print(u_int regvalue, u_int *cur_col, u_int wrap)
{
 return (ahc_print_register(INTSTAT_parse_table, 21, "INTSTAT",
     0x91, regvalue, cur_col, wrap));
}
