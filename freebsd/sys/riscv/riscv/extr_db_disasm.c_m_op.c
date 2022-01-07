
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct riscv_op {int match; int mask; } ;



__attribute__((used)) static int
m_op(struct riscv_op *op, uint32_t insn)
{

 if (((insn ^ op->match) & op->mask) == 0)
  return (1);

 return (0);
}
