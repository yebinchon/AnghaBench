
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int kidx; } ;
struct TYPE_4__ {TYPE_1__ p; } ;
typedef TYPE_2__ ipfw_insn_if ;
typedef int ipfw_insn ;



__attribute__((used)) static void
update_via(ipfw_insn *cmd, uint16_t idx)
{
 ipfw_insn_if *cmdif;

 cmdif = (ipfw_insn_if *)cmd;
 cmdif->p.kidx = idx;
}
