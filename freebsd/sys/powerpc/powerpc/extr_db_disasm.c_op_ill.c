
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
typedef int instr_t ;


 int db_printf (char*,int ) ;

void
op_ill(instr_t instr, vm_offset_t loc)
{
 db_printf("illegal instruction %x\n", instr);
}
