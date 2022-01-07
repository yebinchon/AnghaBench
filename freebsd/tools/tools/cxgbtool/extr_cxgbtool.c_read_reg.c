
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ch_reg {int val; int addr; } ;


 int CHELSIO_GETREG ;
 scalar_t__ doit (char const*,int ,struct ch_reg*) ;
 int err (int,char*) ;

__attribute__((used)) static uint32_t
read_reg(const char *iff_name, uint32_t addr)
{
 struct ch_reg reg;

 reg.addr = addr;

 if (doit(iff_name, CHELSIO_GETREG, &reg) < 0)
  err(1, "register read");
 return reg.val;
}
