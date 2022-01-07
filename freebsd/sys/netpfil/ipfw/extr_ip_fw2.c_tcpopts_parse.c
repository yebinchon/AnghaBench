
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_char ;
struct tcphdr {int th_off; } ;


 int IP_FW_TCPOPT_MSS ;
 int IP_FW_TCPOPT_SACK ;
 int IP_FW_TCPOPT_TS ;
 int IP_FW_TCPOPT_WINDOW ;
 int TCPOPT_EOL ;

 int TCPOPT_NOP ;




 int be16dec (int*) ;

__attribute__((used)) static int
tcpopts_parse(struct tcphdr *tcp, uint16_t *mss)
{
 u_char *cp = (u_char *)(tcp + 1);
 int optlen, bits = 0;
 int x = (tcp->th_off << 2) - sizeof(struct tcphdr);

 for (; x > 0; x -= optlen, cp += optlen) {
  int opt = cp[0];
  if (opt == TCPOPT_EOL)
   break;
  if (opt == TCPOPT_NOP)
   optlen = 1;
  else {
   optlen = cp[1];
   if (optlen <= 0)
    break;
  }

  switch (opt) {
  default:
   break;

  case 132:
   bits |= IP_FW_TCPOPT_MSS;
   if (mss != ((void*)0))
    *mss = be16dec(cp + 2);
   break;

  case 128:
   bits |= IP_FW_TCPOPT_WINDOW;
   break;

  case 130:
  case 131:
   bits |= IP_FW_TCPOPT_SACK;
   break;

  case 129:
   bits |= IP_FW_TCPOPT_TS;
   break;
  }
 }
 return (bits);
}
