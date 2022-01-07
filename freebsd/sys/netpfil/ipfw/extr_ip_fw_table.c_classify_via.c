
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_3__ {int kidx; } ;
struct TYPE_4__ {char* name; TYPE_1__ p; } ;
typedef TYPE_2__ ipfw_insn_if ;
typedef int ipfw_insn ;


 int IPFW_TABLE_INTERFACE ;

__attribute__((used)) static int
classify_via(ipfw_insn *cmd, uint16_t *puidx, uint8_t *ptype)
{
 ipfw_insn_if *cmdif;


 cmdif = (ipfw_insn_if *)cmd;
 if (cmdif->name[0] != '\1')
  return (1);

 *ptype = IPFW_TABLE_INTERFACE;
 *puidx = cmdif->p.kidx;

 return (0);
}
