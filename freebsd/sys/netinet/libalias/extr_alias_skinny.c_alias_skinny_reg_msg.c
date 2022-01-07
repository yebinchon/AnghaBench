
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct tcphdr {int th_x2; scalar_t__ th_sum; } ;
struct ip {int dummy; } ;
struct alias_link {int dummy; } ;
struct RegisterMessage {scalar_t__ ipAddr; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
typedef int ConvDirection ;


 TYPE_1__ GetAliasAddress (struct alias_link*) ;
 scalar_t__ TcpChecksum (struct ip*) ;

__attribute__((used)) static int
alias_skinny_reg_msg(struct RegisterMessage *reg_msg, struct ip *pip,
    struct tcphdr *tc, struct alias_link *lnk,
    ConvDirection direction)
{
 (void)direction;

 reg_msg->ipAddr = (u_int32_t) GetAliasAddress(lnk).s_addr;

 tc->th_sum = 0;



 tc->th_sum = TcpChecksum(pip);


 return (0);
}
