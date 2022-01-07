
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct ip {int ip_hl; } ;
typedef int ipfw_insn ;


 int IPOPT_EOL ;

 int IPOPT_NOP ;
 size_t IPOPT_OLEN ;
 size_t IPOPT_OPTVAL ;



 int IP_FW_IPOPT_LSRR ;
 int IP_FW_IPOPT_RR ;
 int IP_FW_IPOPT_SSRR ;
 int IP_FW_IPOPT_TS ;
 int flags_match (int *,int) ;

__attribute__((used)) static int
ipopts_match(struct ip *ip, ipfw_insn *cmd)
{
 int optlen, bits = 0;
 u_char *cp = (u_char *)(ip + 1);
 int x = (ip->ip_hl << 2) - sizeof (struct ip);

 for (; x > 0; x -= optlen, cp += optlen) {
  int opt = cp[IPOPT_OPTVAL];

  if (opt == IPOPT_EOL)
   break;
  if (opt == IPOPT_NOP)
   optlen = 1;
  else {
   optlen = cp[IPOPT_OLEN];
   if (optlen <= 0 || optlen > x)
    return 0;
  }
  switch (opt) {

  default:
   break;

  case 131:
   bits |= IP_FW_IPOPT_LSRR;
   break;

  case 129:
   bits |= IP_FW_IPOPT_SSRR;
   break;

  case 130:
   bits |= IP_FW_IPOPT_RR;
   break;

  case 128:
   bits |= IP_FW_IPOPT_TS;
   break;
  }
 }
 return (flags_match(cmd, bits));
}
