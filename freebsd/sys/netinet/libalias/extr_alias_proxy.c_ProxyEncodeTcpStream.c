
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct tcphdr {int th_off; int th_x2; scalar_t__ th_sum; int th_seq; } ;
struct ip {int ip_len; int ip_hl; int ip_sum; } ;
struct alias_link {int dummy; } ;
typedef int buffer ;


 int ADJUST_CHECKSUM (int,int ) ;
 int AddSeq (struct alias_link*,int,int,int,int ,int) ;
 scalar_t__ GetAckModified (struct alias_link*) ;
 int GetDeltaSeqOut (int ,struct alias_link*) ;
 int GetProxyAddress (struct alias_link*) ;
 int GetProxyPort (struct alias_link*) ;
 int INET_ADDRSTRLEN ;
 int INET_NTOA_BUF (char*) ;
 int SetAckModified (struct alias_link*) ;
 scalar_t__ TcpChecksum (struct ip*) ;
 int bcopy (char*,char*,int) ;
 int htons (int) ;
 char* inet_ntoa_r (int ,int ) ;
 scalar_t__ ip_next (struct ip*) ;
 int memcpy (char*,char*,int) ;
 int ntohs (int) ;
 int snprintf (char*,int,char*,char*,int) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
ProxyEncodeTcpStream(struct alias_link *lnk,
    struct ip *pip,
    int maxpacketsize)
{
 int slen;
 char buffer[40];
 struct tcphdr *tc;
 char addrbuf[INET_ADDRSTRLEN];


 tc = (struct tcphdr *)ip_next(pip);



 if (GetAckModified(lnk))
  return;


 snprintf(buffer, sizeof(buffer) - 2, "[DEST %s %d]",
     inet_ntoa_r(GetProxyAddress(lnk), INET_NTOA_BUF(addrbuf)),
     (u_int) ntohs(GetProxyPort(lnk)));


 slen = strlen(buffer);
 switch (slen % 2) {
 case 0:
  strcat(buffer, " \n");
  slen += 2;
  break;
 case 1:
  strcat(buffer, "\n");
  slen += 1;
 }


 if ((int)(ntohs(pip->ip_len) + strlen(buffer)) > maxpacketsize)
  return;


 {
  int dlen;
  int hlen;
  char *p;

  hlen = (pip->ip_hl + tc->th_off) << 2;
  dlen = ntohs(pip->ip_len) - hlen;



  if (dlen == 0)
   return;

  p = (char *)pip;
  p += hlen;

  bcopy(p, p + slen, dlen);
  memcpy(p, buffer, slen);
 }


 {
  int delta;

  SetAckModified(lnk);
  tc = (struct tcphdr *)ip_next(pip);
  delta = GetDeltaSeqOut(tc->th_seq, lnk);
  AddSeq(lnk, delta + slen, pip->ip_hl, pip->ip_len, tc->th_seq,
      tc->th_off);
 }


 {
  int accumulate;

  accumulate = pip->ip_len;
  pip->ip_len = htons(ntohs(pip->ip_len) + slen);
  accumulate -= pip->ip_len;

  ADJUST_CHECKSUM(accumulate, pip->ip_sum);
 }




 tc->th_sum = 0;



 tc->th_sum = TcpChecksum(pip);

}
