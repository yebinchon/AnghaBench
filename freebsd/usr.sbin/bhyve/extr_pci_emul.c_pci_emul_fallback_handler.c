
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vmctx {int dummy; } ;


 int MEM_F_READ ;

__attribute__((used)) static int
pci_emul_fallback_handler(struct vmctx *ctx, int vcpu, int dir, uint64_t addr,
     int size, uint64_t *val, void *arg1, long arg2)
{




 if (dir == MEM_F_READ) {
  *val = 0xffffffffffffffff;
 }

 return (0);
}
