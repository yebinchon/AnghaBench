
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_fw_chain {int dummy; } ;
struct ip_fw_args {int dummy; } ;
typedef int ipfw_insn ;


 int IP_FW_DENY ;

__attribute__((used)) static int
default_eaction(struct ip_fw_chain *ch, struct ip_fw_args *args,
    ipfw_insn *cmd, int *done)
{

 *done = 1;
 return (IP_FW_DENY);
}
