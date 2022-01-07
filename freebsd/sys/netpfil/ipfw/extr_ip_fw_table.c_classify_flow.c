
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int arg1; } ;
typedef TYPE_1__ ipfw_insn ;


 int IPFW_TABLE_FLOW ;

__attribute__((used)) static int
classify_flow(ipfw_insn *cmd, uint16_t *puidx, uint8_t *ptype)
{

 *puidx = cmd->arg1;
 *ptype = IPFW_TABLE_FLOW;

 return (0);
}
