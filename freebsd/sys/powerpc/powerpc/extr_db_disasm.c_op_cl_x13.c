
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int instr_t ;


 int dis_ppc (int ,int ,int ) ;
 int opcodes_13 ;

void
op_cl_x13(instr_t instr, vm_offset_t loc)
{
 dis_ppc(opcodes_13, instr, loc);
}
