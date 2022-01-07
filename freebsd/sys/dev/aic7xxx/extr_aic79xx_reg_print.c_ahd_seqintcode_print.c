
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int SEQINTCODE_parse_table ;
 int ahd_print_register (int ,int,char*,int,int ,int *,int ) ;

int
ahd_seqintcode_print(u_int regvalue, u_int *cur_col, u_int wrap)
{
 return (ahd_print_register(SEQINTCODE_parse_table, 27, "SEQINTCODE",
     0x02, regvalue, cur_col, wrap));
}
