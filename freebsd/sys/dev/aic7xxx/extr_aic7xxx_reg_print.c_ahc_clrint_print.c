
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int CLRINT_parse_table ;
 int ahc_print_register (int ,int,char*,int,int ,int *,int ) ;

int
ahc_clrint_print(u_int regvalue, u_int *cur_col, u_int wrap)
{
 return (ahc_print_register(CLRINT_parse_table, 5, "CLRINT",
     0x92, regvalue, cur_col, wrap));
}
