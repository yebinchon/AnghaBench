
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ opcode; scalar_t__ arg1; } ;
typedef TYPE_1__ ipfw_insn ;


 scalar_t__ O_EXTERNAL_ACTION ;
 scalar_t__ V_nat64clat_eid ;

__attribute__((used)) static int
nat64clat_classify(ipfw_insn *cmd, uint16_t *puidx, uint8_t *ptype)
{
 ipfw_insn *icmd;

 icmd = cmd - 1;
 if (icmd->opcode != O_EXTERNAL_ACTION ||
     icmd->arg1 != V_nat64clat_eid)
  return (1);

 *puidx = cmd->arg1;
 *ptype = 0;
 return (0);
}
