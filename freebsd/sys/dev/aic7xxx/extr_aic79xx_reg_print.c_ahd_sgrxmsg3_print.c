
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int SGRXMSG3_parse_table ;
 int ahd_print_register (int ,int,char*,int,int ,int *,int ) ;

int
ahd_sgrxmsg3_print(u_int regvalue, u_int *cur_col, u_int wrap)
{
 return (ahd_print_register(SGRXMSG3_parse_table, 1, "SGRXMSG3",
     0x9b, regvalue, cur_col, wrap));
}
