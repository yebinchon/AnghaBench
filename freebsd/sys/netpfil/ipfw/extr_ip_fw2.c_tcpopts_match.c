
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int dummy; } ;
typedef int ipfw_insn ;


 int flags_match (int *,int ) ;
 int tcpopts_parse (struct tcphdr*,int *) ;

__attribute__((used)) static int
tcpopts_match(struct tcphdr *tcp, ipfw_insn *cmd)
{

 return (flags_match(cmd, tcpopts_parse(tcp, ((void*)0))));
}
