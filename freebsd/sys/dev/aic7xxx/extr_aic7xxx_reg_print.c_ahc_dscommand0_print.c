
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int DSCOMMAND0_parse_table ;
 int ahc_print_register (int ,int,char*,int,int ,int *,int ) ;

int
ahc_dscommand0_print(u_int regvalue, u_int *cur_col, u_int wrap)
{
 return (ahc_print_register(DSCOMMAND0_parse_table, 8, "DSCOMMAND0",
     0x84, regvalue, cur_col, wrap));
}
