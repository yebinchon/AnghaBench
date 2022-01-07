
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int instr_t ;


 int dis_ppc (int ,int ,int ) ;
 int opcodes_1e ;

void
op_cl_x1e(instr_t instr, vm_offset_t loc)
{
 dis_ppc(opcodes_1e, instr, loc);
}
