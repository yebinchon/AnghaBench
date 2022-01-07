
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct icmphdr {int icmp_type; } ;
struct TYPE_3__ {int* d; } ;
typedef TYPE_1__ ipfw_insn_u32 ;


 int ICMP_MAXTYPE ;

__attribute__((used)) static __inline int
icmptype_match(struct icmphdr *icmp, ipfw_insn_u32 *cmd)
{
 int type = icmp->icmp_type;

 return (type <= ICMP_MAXTYPE && (cmd->d[0] & (1<<type)) );
}
