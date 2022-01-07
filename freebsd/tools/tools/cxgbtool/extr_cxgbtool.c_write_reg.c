
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct ch_reg {void* val; void* addr; } ;


 int CHELSIO_SETREG ;
 scalar_t__ doit (char const*,int ,struct ch_reg*) ;
 int err (int,char*) ;

__attribute__((used)) static void
write_reg(const char *iff_name, uint32_t addr, uint32_t val)
{
 struct ch_reg ch_reg;

 ch_reg.addr = addr;
 ch_reg.val = val;

 if (doit(iff_name, CHELSIO_SETREG, &ch_reg) < 0)
  err(1, "register write");
}
