
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int SLVSPLTOUTADR3_parse_table ;
 int ahd_print_register (int ,int,char*,int,int ,int *,int ) ;

int
ahd_slvspltoutadr3_print(u_int regvalue, u_int *cur_col, u_int wrap)
{
 return (ahd_print_register(SLVSPLTOUTADR3_parse_table, 2, "SLVSPLTOUTADR3",
     0x9b, regvalue, cur_col, wrap));
}
