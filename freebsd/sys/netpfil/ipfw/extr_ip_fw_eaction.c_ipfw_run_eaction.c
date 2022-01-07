
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip_fw_chain {int dummy; } ;
struct ip_fw_args {int dummy; } ;
typedef int ipfw_insn ;
struct TYPE_2__ {int (* handler ) (struct ip_fw_chain*,struct ip_fw_args*,int *,int*) ;} ;


 TYPE_1__* EACTION_OBJ (struct ip_fw_chain*,int *) ;
 int stub1 (struct ip_fw_chain*,struct ip_fw_args*,int *,int*) ;

int
ipfw_run_eaction(struct ip_fw_chain *ch, struct ip_fw_args *args,
    ipfw_insn *cmd, int *done)
{

 return (EACTION_OBJ(ch, cmd)->handler(ch, args, cmd, done));
}
