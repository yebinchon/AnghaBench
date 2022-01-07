
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct t4_reg {long long val; void* size; void* addr; } ;


 int CHELSIO_T4_GETREG ;
 int doit (int ,struct t4_reg*) ;

__attribute__((used)) static int
read_reg(long addr, int size, long long *val)
{
 struct t4_reg reg;
 int rc;

 reg.addr = (uint32_t) addr;
 reg.size = (uint32_t) size;
 reg.val = 0;

 rc = doit(CHELSIO_T4_GETREG, &reg);

 *val = reg.val;

 return (rc);
}
