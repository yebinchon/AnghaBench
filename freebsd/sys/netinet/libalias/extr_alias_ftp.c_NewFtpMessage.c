
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct tcphdr {int th_off; int th_x2; scalar_t__ th_sum; int th_seq; } ;
struct TYPE_4__ {scalar_t__ s_addr; } ;
struct libalias {scalar_t__ true_port; TYPE_2__ true_addr; } ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct ip {int ip_hl; int ip_len; int ip_sum; TYPE_1__ ip_src; } ;
struct in_addr {int s_addr; } ;
struct alias_link {int dummy; } ;


 struct alias_link* AddLink (struct libalias*,TYPE_2__,int ,struct in_addr,int ,int ,int ,int ) ;
 int AddSeq (struct alias_link*,int,int,int ,int ,int) ;
 int DifferentialChecksum (int *,int *,int *,int) ;




 int GET_ALIAS_PORT ;
 struct in_addr GetAliasAddress (struct alias_link*) ;
 int GetAliasPort (struct alias_link*) ;
 int GetDeltaSeqOut (int ,struct alias_link*) ;
 int GetDestAddress (struct alias_link*) ;
 scalar_t__ IPPORT_RESERVED ;
 int IPPROTO_TCP ;
 int MAX_MESSAGE_SIZE ;
 int PunchFWHole (struct alias_link*) ;
 int SetAckModified (struct alias_link*) ;
 scalar_t__ TcpChecksum (struct ip*) ;
 int fprintf (int ,char*) ;
 int htons (int) ;
 scalar_t__ ip_next (struct ip*) ;
 int ntohs (int ) ;
 int sprintf (char*,char*,int,...) ;
 int stderr ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static void
NewFtpMessage(struct libalias *la, struct ip *pip,
    struct alias_link *lnk,
    int maxpacketsize,
    int ftp_message_type)
{
 struct alias_link *ftp_lnk;


 if (pip->ip_src.s_addr != la->true_addr.s_addr)
  return;

 if (la->true_port < IPPORT_RESERVED)
  return;


 ftp_lnk = AddLink(la, la->true_addr, GetDestAddress(lnk),
     GetAliasAddress(lnk), htons(la->true_port), 0, GET_ALIAS_PORT,
     IPPROTO_TCP);

 if (ftp_lnk != ((void*)0)) {
  int slen, hlen, tlen, dlen;
  struct tcphdr *tc;



  PunchFWHole(ftp_lnk);



  tc = (struct tcphdr *)ip_next(pip);
  hlen = (pip->ip_hl + tc->th_off) << 2;
  tlen = ntohs(pip->ip_len);
  dlen = tlen - hlen;


  {
   char stemp[MAX_MESSAGE_SIZE + 1];
   char *sptr;
   u_short alias_port;
   u_char *ptr;
   int a1, a2, a3, a4, p1, p2;
   struct in_addr alias_address;


   alias_address = GetAliasAddress(lnk);
   ptr = (u_char *) & alias_address.s_addr;
   a1 = *ptr++;
   a2 = *ptr++;
   a3 = *ptr++;
   a4 = *ptr;

   alias_port = GetAliasPort(ftp_lnk);


   switch (ftp_message_type) {
   case 128:
   case 131:

    ptr = (char *)&alias_port;
    p1 = *ptr++;
    p2 = *ptr;

    if (ftp_message_type == 128) {

     sprintf(stemp, "PORT %d,%d,%d,%d,%d,%d\r\n",
         a1, a2, a3, a4, p1, p2);
    } else {

     sprintf(stemp,
         "227 Entering Passive Mode (%d,%d,%d,%d,%d,%d)\r\n",
         a1, a2, a3, a4, p1, p2);
    }
    break;
   case 129:

    sprintf(stemp, "EPRT |1|%d.%d.%d.%d|%d|\r\n",
        a1, a2, a3, a4, ntohs(alias_port));
    break;
   case 130:

    sprintf(stemp, "229 Entering Extended Passive Mode (|||%d|)\r\n",
        ntohs(alias_port));
    break;
   }


   slen = strlen(stemp);


   sptr = (char *)pip;
   sptr += hlen;
   strncpy(sptr, stemp, maxpacketsize - hlen);
  }


  {
   int delta;

   SetAckModified(lnk);
   tc = (struct tcphdr *)ip_next(pip);
   delta = GetDeltaSeqOut(tc->th_seq, lnk);
   AddSeq(lnk, delta + slen - dlen, pip->ip_hl,
       pip->ip_len, tc->th_seq, tc->th_off);
  }


  {
   u_short new_len;

   new_len = htons(hlen + slen);
   DifferentialChecksum(&pip->ip_sum,
       &new_len,
       &pip->ip_len,
       1);
   pip->ip_len = new_len;
  }


  tc->th_sum = 0;



  tc->th_sum = TcpChecksum(pip);

 } else {




 }
}
