
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_short ;
struct tcphdr {int th_x2; scalar_t__ th_sum; } ;
struct libalias {int dummy; } ;
struct ip {int ip_src; } ;
struct alias_link {int dummy; } ;


 struct alias_link* FindUdpTcpOut (struct libalias*,int ,int ,char,int ,int ,int) ;
 char GetAliasPort (struct alias_link*) ;
 int GetDestAddress (struct alias_link*) ;
 int IPPROTO_UDP ;
 int PunchFWHole (struct alias_link*) ;
 scalar_t__ TcpChecksum (struct ip*) ;
 scalar_t__ ip_next (struct ip*) ;
 int memcpy (char*,char*,int) ;
 int ntohs (char) ;

__attribute__((used)) static int
alias_pna_out(struct libalias *la, struct ip *pip,
    struct alias_link *lnk,
    char *data,
    int dlen)
{
 struct alias_link *pna_links;
 u_short msg_id, msg_len;
 char *work;
 u_short alias_port, port;
 struct tcphdr *tc;

 work = data;
 work += 5;
 while (work + 4 < data + dlen) {
  memcpy(&msg_id, work, 2);
  work += 2;
  memcpy(&msg_len, work, 2);
  work += 2;
  if (ntohs(msg_id) == 0) {

   return (0);
  }
  if ((ntohs(msg_id) == 1) || (ntohs(msg_id) == 7)) {
   memcpy(&port, work, 2);
   pna_links = FindUdpTcpOut(la, pip->ip_src, GetDestAddress(lnk),
       port, 0, IPPROTO_UDP, 1);
   if (pna_links != ((void*)0)) {


    PunchFWHole(pna_links);

    tc = (struct tcphdr *)ip_next(pip);
    alias_port = GetAliasPort(pna_links);
    memcpy(work, &alias_port, 2);


    tc->th_sum = 0;



    tc->th_sum = TcpChecksum(pip);

   }
  }
  work += ntohs(msg_len);
 }

 return (0);
}
