
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct opcode {int mask; int code; int name; } ;
typedef int instr_t ;


 int db_printf (char*,int ,char*) ;
 int disasm_fields (struct opcode const*,int,int ,char*,int) ;
 int op_ill (int,int ) ;

void
dis_ppc(const struct opcode *opcodeset, instr_t instr, vm_offset_t loc)
{
 const struct opcode *op;
 int found = 0;
 int i;
 char disasm_str[80];

 for (i = 0, op = &opcodeset[0];
     found == 0 && op->mask != 0;
     i++, op = &opcodeset[i]) {
  if ((instr & op->mask) == op->code) {
   found = 1;
   disasm_fields(op, instr, loc, disasm_str,
    sizeof disasm_str);
   db_printf("%s%s\n", op->name, disasm_str);
   return;
  }
 }
 op_ill(instr, loc);
}
