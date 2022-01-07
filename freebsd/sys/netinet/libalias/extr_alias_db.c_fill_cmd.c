
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int16_t ;
struct TYPE_6__ {int opcode; int len; int arg1; } ;
typedef TYPE_1__ ipfw_insn ;
typedef enum ipfw_opcodes { ____Placeholder_ipfw_opcodes } ipfw_opcodes ;


 int F_LEN_MASK ;
 int F_NOT ;
 int F_OR ;
 TYPE_1__* next_cmd (TYPE_1__*) ;

__attribute__((used)) static ipfw_insn *
fill_cmd(ipfw_insn * cmd, enum ipfw_opcodes opcode, int size,
    int flags, u_int16_t arg)
{
 cmd->opcode = opcode;
 cmd->len = ((cmd->len | flags) & (F_NOT | F_OR)) | (size & F_LEN_MASK);
 cmd->arg1 = arg;
 return next_cmd(cmd);
}
