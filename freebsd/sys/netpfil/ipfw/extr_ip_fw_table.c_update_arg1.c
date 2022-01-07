
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int arg1; } ;
typedef TYPE_1__ ipfw_insn ;



__attribute__((used)) static void
update_arg1(ipfw_insn *cmd, uint16_t idx)
{

 cmd->arg1 = idx;
}
