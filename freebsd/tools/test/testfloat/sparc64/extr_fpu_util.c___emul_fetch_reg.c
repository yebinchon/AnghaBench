
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct utrapframe {int dummy; } ;


 int * ireg ;

u_long
__emul_fetch_reg(struct utrapframe *uf, int reg)
{

 return (ireg[reg]);
}
