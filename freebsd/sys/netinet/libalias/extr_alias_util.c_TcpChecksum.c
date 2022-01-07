
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef scalar_t__ u_char ;
struct tcphdr {int dummy; } ;
struct ip {int ip_hl; scalar_t__ ip_p; int ip_src; int ip_dst; int ip_len; } ;


 scalar_t__ htons (scalar_t__) ;
 scalar_t__ ip_next (struct ip*) ;
 int ntohs (int ) ;

u_short
TcpChecksum(struct ip *pip)
{
 u_short *ptr;
 struct tcphdr *tc;
 int nhdr, ntcp, nbytes;
 int sum, oddbyte;

 nhdr = pip->ip_hl << 2;
 ntcp = ntohs(pip->ip_len) - nhdr;

 tc = (struct tcphdr *)ip_next(pip);
 ptr = (u_short *) tc;


 nbytes = ntcp;
 sum = 0;
 while (nbytes > 1) {
  sum += *ptr++;
  nbytes -= 2;
 }
 if (nbytes == 1) {
  oddbyte = 0;
  ((u_char *) & oddbyte)[0] = *(u_char *) ptr;
  ((u_char *) & oddbyte)[1] = 0;
  sum += oddbyte;
 }

 ptr = (void *)&pip->ip_dst;
 sum += *ptr++;
 sum += *ptr;
 ptr = (void *)&pip->ip_src;
 sum += *ptr++;
 sum += *ptr;
 sum += htons((u_short) ntcp);
 sum += htons((u_short) pip->ip_p);


 sum = (sum >> 16) + (sum & 0xffff);
 sum += (sum >> 16);


 return ((u_short) ~ sum);
}
