
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_3__ {int s_addr; } ;
struct TYPE_4__ {TYPE_1__ addr; } ;
typedef TYPE_2__ ipfw_insn_ip ;
typedef int ipfw_insn ;
typedef enum ipfw_opcodes { ____Placeholder_ipfw_opcodes } ipfw_opcodes ;


 int F_INSN_SIZE (int ) ;
 int * fill_cmd (int *,int,int ,int ,int ) ;
 int ipfw_insn_u32 ;

__attribute__((used)) static ipfw_insn *
fill_ip(ipfw_insn * cmd1, enum ipfw_opcodes opcode, u_int32_t addr)
{
 ipfw_insn_ip *cmd = (ipfw_insn_ip *) cmd1;

 cmd->addr.s_addr = addr;
 return fill_cmd(cmd1, opcode, F_INSN_SIZE(ipfw_insn_u32), 0, 0);
}
