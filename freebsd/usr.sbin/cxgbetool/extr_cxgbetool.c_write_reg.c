
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef void* uint32_t ;
struct t4_reg {scalar_t__ val; void* size; void* addr; } ;


 int CHELSIO_T4_SETREG ;
 int doit (int ,struct t4_reg*) ;

__attribute__((used)) static int
write_reg(long addr, int size, long long val)
{
 struct t4_reg reg;

 reg.addr = (uint32_t) addr;
 reg.size = (uint32_t) size;
 reg.val = (uint64_t) val;

 return doit(CHELSIO_T4_SETREG, &reg);
}
