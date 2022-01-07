
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int RCVRBIOSCTL_parse_table ;
 int ahd_print_register (int ,int,char*,int,int ,int *,int ) ;

int
ahd_rcvrbiosctl_print(u_int regvalue, u_int *cur_col, u_int wrap)
{
 return (ahd_print_register(RCVRBIOSCTL_parse_table, 2, "RCVRBIOSCTL",
     0xc6, regvalue, cur_col, wrap));
}
