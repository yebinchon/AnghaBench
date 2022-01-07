
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tcphdr {int th_off; int th_dport; } ;
struct TYPE_3__ {int s_addr; } ;
struct libalias {TYPE_1__ true_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct ip {int ip_hl; int ip_len; TYPE_2__ ip_src; } ;
struct alias_link {int dummy; } ;


 int FTP_227_REPLY ;
 int FTP_229_REPLY ;
 scalar_t__ FTP_CONTROL_PORT_NUMBER ;
 int FTP_EPRT_COMMAND ;
 int FTP_PORT_COMMAND ;
 int FTP_UNKNOWN_MESSAGE ;
 int GetProtocolFlags (struct alias_link*) ;
 int MAX_MESSAGE_SIZE ;
 int NewFtpMessage (struct libalias*,struct ip*,struct alias_link*,int,int) ;
 scalar_t__ ParseFtp227Reply (struct libalias*,char*,int) ;
 scalar_t__ ParseFtp229Reply (struct libalias*,char*,int) ;
 scalar_t__ ParseFtpEprtCommand (struct libalias*,char*,int) ;
 scalar_t__ ParseFtpPortCommand (struct libalias*,char*,int) ;
 int SetProtocolFlags (struct alias_link*,int) ;
 int WAIT_CRLF ;
 scalar_t__ ip_next (struct ip*) ;
 scalar_t__ ntohs (int ) ;

__attribute__((used)) static void
AliasHandleFtpOut(
    struct libalias *la,
    struct ip *pip,
    struct alias_link *lnk,
    int maxpacketsize )

{
 int hlen, tlen, dlen, pflags;
 char *sptr;
 struct tcphdr *tc;
 int ftp_message_type;


 tc = (struct tcphdr *)ip_next(pip);
 hlen = (pip->ip_hl + tc->th_off) << 2;
 tlen = ntohs(pip->ip_len);
 dlen = tlen - hlen;


 sptr = (char *)pip;
 sptr += hlen;





 pflags = GetProtocolFlags(lnk);
 if (dlen <= MAX_MESSAGE_SIZE && !(pflags & WAIT_CRLF)) {
  ftp_message_type = FTP_UNKNOWN_MESSAGE;

  if (ntohs(tc->th_dport) == FTP_CONTROL_PORT_NUMBER) {



   if (ParseFtpPortCommand(la, sptr, dlen))
    ftp_message_type = FTP_PORT_COMMAND;
   else if (ParseFtpEprtCommand(la, sptr, dlen))
    ftp_message_type = FTP_EPRT_COMMAND;
  } else {



   if (ParseFtp227Reply(la, sptr, dlen))
    ftp_message_type = FTP_227_REPLY;
   else if (ParseFtp229Reply(la, sptr, dlen)) {
    ftp_message_type = FTP_229_REPLY;
    la->true_addr.s_addr = pip->ip_src.s_addr;
   }
  }

  if (ftp_message_type != FTP_UNKNOWN_MESSAGE)
   NewFtpMessage(la, pip, lnk, maxpacketsize, ftp_message_type);
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
