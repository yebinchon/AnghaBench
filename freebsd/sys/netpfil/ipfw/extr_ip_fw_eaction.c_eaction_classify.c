
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int arg1; int opcode; } ;
typedef TYPE_1__ ipfw_insn ;


 int EACTION_DEBUG (char*,int ,int ) ;

__attribute__((used)) static int
eaction_classify(ipfw_insn *cmd, uint16_t *puidx, uint8_t *ptype)
{

 EACTION_DEBUG("opcode %d, arg1 %d", cmd->opcode, cmd->arg1);
 *puidx = cmd->arg1;
 *ptype = 0;
 return (0);
}
