
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
typedef int u_long ;
struct tcphdr {int th_off; int th_x2; scalar_t__ th_sum; int th_seq; } ;
struct libalias {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;
struct ip {int ip_hl; int ip_len; int ip_sum; TYPE_1__ ip_src; } ;
struct in_addr {scalar_t__ s_addr; } ;
struct alias_link {int dummy; } ;


 int AddSeq (struct alias_link*,int,int,int,int ,int) ;
 int DBprintf (char*) ;
 int DifferentialChecksum (int *,int*,int*,int) ;
 struct alias_link* FindUdpTcpOut (struct libalias*,struct in_addr,struct in_addr,int,int ,int ,int) ;
 struct in_addr GetAliasAddress (struct alias_link*) ;
 int GetAliasPort (struct alias_link*) ;
 int GetDeltaSeqOut (int ,struct alias_link*) ;
 unsigned short IPPORT_RESERVED ;
 int IPPROTO_TCP ;
 unsigned int PKTSIZE ;
 int PunchFWHole (struct alias_link*) ;
 int SetAckModified (struct alias_link*) ;
 scalar_t__ TcpChecksum (struct ip*) ;
 unsigned long ULONG_MAX ;
 scalar_t__ htonl (unsigned long) ;
 int htons (int) ;
 scalar_t__ ip_next (struct ip*) ;
 scalar_t__ isdigit (char) ;
 int memcpy (char*,char*,unsigned int) ;
 char* newpacket ;
 int ntohs (int) ;
 int snprintf (char*,unsigned int,char*,int) ;

__attribute__((used)) static void
AliasHandleIrcOut(struct libalias *la,
    struct ip *pip,
    struct alias_link *lnk,
    int maxsize

)
{
 int hlen, tlen, dlen;
 struct in_addr true_addr;
 u_short true_port;
 char *sptr;
 struct tcphdr *tc;
 int i;


 tc = (struct tcphdr *)ip_next(pip);
 hlen = (pip->ip_hl + tc->th_off) << 2;
 tlen = ntohs(pip->ip_len);
 dlen = tlen - hlen;





 if (dlen < (int)sizeof(":A!a@n.n PRIVMSG A :aDCC 1 1a") - 1)
  return;


 sptr = (char *)pip;
 sptr += hlen;
 maxsize -= hlen;



 for (i = 0; i < dlen; i++) {
  if (sptr[i] == '\001')
   goto lFOUND_CTCP;
 }
 return;

lFOUND_CTCP:
 {
  unsigned int copyat = i;
  unsigned int iCopy = 0;

  unsigned long org_addr;
  unsigned short org_port;


lCTCP_START:
  if (i >= dlen || iCopy >= PKTSIZE)
   goto lPACKET_DONE;
  newpacket[iCopy++] = sptr[i++];


  if (i + 4 >= dlen)
   goto lBAD_CTCP;
  if (sptr[i + 0] != 'D')
   goto lBAD_CTCP;
  if (sptr[i + 1] != 'C')
   goto lBAD_CTCP;
  if (sptr[i + 2] != 'C')
   goto lBAD_CTCP;
  if (sptr[i + 3] != ' ')
   goto lBAD_CTCP;

  i += 4;
  if (iCopy + 4 > PKTSIZE)
   goto lPACKET_DONE;
  newpacket[iCopy++] = 'D';
  newpacket[iCopy++] = 'C';
  newpacket[iCopy++] = 'C';
  newpacket[iCopy++] = ' ';

  DBprintf(("Found DCC\n"));




  while (sptr[i] == ' ') {
   if (++i >= dlen) {
    DBprintf(("DCC packet terminated in just spaces\n"));
    goto lPACKET_DONE;
   }
  }

  DBprintf(("Transferring command...\n"));
  while (sptr[i] != ' ') {
   newpacket[iCopy++] = sptr[i];
   if (++i >= dlen || iCopy >= PKTSIZE) {
    DBprintf(("DCC packet terminated during command\n"));
    goto lPACKET_DONE;
   }
  }

  if (i + 1 < dlen && iCopy < PKTSIZE)
   newpacket[iCopy++] = sptr[i++];

  DBprintf(("Done command - removing spaces\n"));




  while (sptr[i] == ' ') {
   if (++i >= dlen) {
    DBprintf(("DCC packet terminated in just spaces (post-command)\n"));
    goto lPACKET_DONE;
   }
  }

  DBprintf(("Transferring filename...\n"));
  while (sptr[i] != ' ') {
   newpacket[iCopy++] = sptr[i];
   if (++i >= dlen || iCopy >= PKTSIZE) {
    DBprintf(("DCC packet terminated during filename\n"));
    goto lPACKET_DONE;
   }
  }

  if (i + 1 < dlen && iCopy < PKTSIZE)
   newpacket[iCopy++] = sptr[i++];

  DBprintf(("Done filename - removing spaces\n"));




  while (sptr[i] == ' ') {
   if (++i >= dlen) {
    DBprintf(("DCC packet terminated in just spaces (post-filename)\n"));
    goto lPACKET_DONE;
   }
  }

  DBprintf(("Fetching IP address\n"));

  org_addr = 0;
  while (i < dlen && isdigit(sptr[i])) {
   if (org_addr > ULONG_MAX / 10UL) {
    DBprintf(("DCC Address overflow (org_addr == 0x%08lx, next char %c\n", org_addr, sptr[i]));
    goto lBAD_CTCP;
   }
   org_addr *= 10;
   org_addr += sptr[i++] - '0';
  }
  DBprintf(("Skipping space\n"));
  if (i + 1 >= dlen || sptr[i] != ' ') {
   DBprintf(("Overflow (%d >= %d) or bad character (%02x) terminating IP address\n", i + 1, dlen, sptr[i]));
   goto lBAD_CTCP;
  }





  while (sptr[i] == ' ') {
   if (++i >= dlen) {
    DBprintf(("Packet failure - space overflow.\n"));
    goto lPACKET_DONE;
   }
  }
  DBprintf(("Fetching port number\n"));

  org_port = 0;
  while (i < dlen && isdigit(sptr[i])) {
   if (org_port > 6554) {

    DBprintf(("DCC: port number overflow\n"));
    goto lBAD_CTCP;
   }
   org_port *= 10;
   org_port += sptr[i++] - '0';
  }

  if (i >= dlen || (sptr[i] != '\001' && sptr[i] != ' ')) {
   DBprintf(("Bad port termination\n"));
   goto lBAD_CTCP;
  }
  DBprintf(("Got IP %lu and port %u\n", org_addr, (unsigned)org_port));


  {
   struct alias_link *dcc_lnk;
   struct in_addr destaddr;


   true_port = htons(org_port);
   true_addr.s_addr = htonl(org_addr);
   destaddr.s_addr = 0;


   if (!org_addr || !org_port ||
       pip->ip_src.s_addr != true_addr.s_addr ||
       org_port < IPPORT_RESERVED)
    goto lBAD_CTCP;






   dcc_lnk = FindUdpTcpOut(la, true_addr, destaddr,
       true_port, 0,
       IPPROTO_TCP, 1);
   DBprintf(("Got a DCC link\n"));
   if (dcc_lnk) {
    struct in_addr alias_address;
    u_short alias_port;

    int n;



    PunchFWHole(dcc_lnk);


    alias_address = GetAliasAddress(lnk);
    n = snprintf(&newpacket[iCopy],
        PKTSIZE - iCopy,
        "%lu ", (u_long) htonl(alias_address.s_addr));
    if (n < 0) {
     DBprintf(("DCC packet construct failure.\n"));
     goto lBAD_CTCP;
    }
    if ((iCopy += n) >= PKTSIZE) {

     DBprintf(("DCC constructed packet overflow.\n"));
     goto lBAD_CTCP;
    }
    alias_port = GetAliasPort(dcc_lnk);
    n = snprintf(&newpacket[iCopy],
        PKTSIZE - iCopy,
        "%u", htons(alias_port));
    if (n < 0) {
     DBprintf(("DCC packet construct failure.\n"));
     goto lBAD_CTCP;
    }
    iCopy += n;




    DBprintf(("Aliased IP %lu and port %u\n", alias_address.s_addr, (unsigned)alias_port));
   }
  }





lBAD_CTCP:
  for (; i < dlen && iCopy < PKTSIZE; i++, iCopy++) {
   newpacket[iCopy] = sptr[i];
   if (sptr[i] == '\001') {
    goto lNORMAL_TEXT;
   }
  }
  goto lPACKET_DONE;

lNORMAL_TEXT:
  for (; i < dlen && iCopy < PKTSIZE; i++, iCopy++) {
   newpacket[iCopy] = sptr[i];
   if (sptr[i] == '\001') {
    goto lCTCP_START;
   }
  }

lPACKET_DONE:
  iCopy = iCopy > maxsize - copyat ? maxsize - copyat : iCopy;
  memcpy(sptr + copyat, newpacket, iCopy);


  {
   int delta;

   SetAckModified(lnk);
   tc = (struct tcphdr *)ip_next(pip);
   delta = GetDeltaSeqOut(tc->th_seq, lnk);
   AddSeq(lnk, delta + copyat + iCopy - dlen, pip->ip_hl,
       pip->ip_len, tc->th_seq, tc->th_off);
  }


  {
   u_short new_len;

   new_len = htons(hlen + iCopy + copyat);
   DifferentialChecksum(&pip->ip_sum,
       &new_len,
       &pip->ip_len,
       1);
   pip->ip_len = new_len;
  }


  tc->th_sum = 0;



  tc->th_sum = TcpChecksum(pip);

  return;
 }
}
