
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int HA_274_BIOSCTRL_parse_table ;
 int ahc_print_register (int ,int,char*,int,int ,int *,int ) ;

int
ahc_ha_274_biosctrl_print(u_int regvalue, u_int *cur_col, u_int wrap)
{
 return (ahc_print_register(HA_274_BIOSCTRL_parse_table, 3, "HA_274_BIOSCTRL",
     0x5f, regvalue, cur_col, wrap));
}
