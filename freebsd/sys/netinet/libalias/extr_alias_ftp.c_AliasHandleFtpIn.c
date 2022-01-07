
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcphdr {int th_off; int th_dport; } ;
struct libalias {scalar_t__ true_port; int true_addr; } ;
struct ip {int ip_hl; int ip_len; } ;
struct alias_link {int dummy; } ;


 int AddLink (struct libalias*,int ,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ FTP_CONTROL_PORT_NUMBER ;
 int GET_ALIAS_PORT ;
 int GetAliasAddress (struct alias_link*) ;
 int GetOriginalAddress (struct alias_link*) ;
 int GetProtocolFlags (struct alias_link*) ;
 int IPPROTO_TCP ;
 int MAX_MESSAGE_SIZE ;
 scalar_t__ ParseFtpEprtCommand (struct libalias*,char*,int) ;
 scalar_t__ ParseFtpPortCommand (struct libalias*,char*,int) ;
 int SetProtocolFlags (struct alias_link*,int) ;
 int WAIT_CRLF ;
 int htons (scalar_t__) ;
 scalar_t__ ip_next (struct ip*) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void
AliasHandleFtpIn(struct libalias *la,
    struct ip *pip,
    struct alias_link *lnk)
{
 int hlen, tlen, dlen, pflags;
 char *sptr;
 struct tcphdr *tc;


 tc = (struct tcphdr *)ip_next(pip);
 hlen = (pip->ip_hl + tc->th_off) << 2;
 tlen = ntohs(pip->ip_len);
 dlen = tlen - hlen;


 sptr = (char *)pip;
 sptr += hlen;





 pflags = GetProtocolFlags(lnk);
 if (dlen <= MAX_MESSAGE_SIZE && (pflags & WAIT_CRLF) == 0 &&
     ntohs(tc->th_dport) == FTP_CONTROL_PORT_NUMBER &&
     (ParseFtpPortCommand(la, sptr, dlen) != 0 ||
      ParseFtpEprtCommand(la, sptr, dlen) != 0)) {





  AddLink(la, GetOriginalAddress(lnk), la->true_addr,
      GetAliasAddress(lnk), htons(FTP_CONTROL_PORT_NUMBER - 1),
      htons(la->true_port), GET_ALIAS_PORT, IPPROTO_TCP);
 }

 if (dlen) {
  sptr = (char *)pip;
  tlen = ntohs(pip->ip_len);


  if (sptr[tlen - 2] == '\r' && sptr[tlen - 1] == '\n')
   pflags &= ~WAIT_CRLF;
  else
   pflags |= WAIT_CRLF;
  SetProtocolFlags(lnk, pflags);
       }
}
