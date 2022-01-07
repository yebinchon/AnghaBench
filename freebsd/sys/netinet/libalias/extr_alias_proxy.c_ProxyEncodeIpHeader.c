
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;
typedef int u_int ;
typedef int u_char ;
struct tcphdr {int th_sport; } ;
struct ip {int ip_hl; int ip_sum; scalar_t__ ip_len; int ip_dst; } ;


 int ADJUST_CHECKSUM (int,int ) ;
 scalar_t__ IpChecksum (struct ip*) ;
 int OPTION_LEN_BYTES ;
 int OPTION_LEN_INT16 ;
 int OPTION_LEN_INT32 ;
 scalar_t__ TcpChecksum (struct ip*) ;
 int fprintf (int ,char*,int) ;
 scalar_t__ htons (int) ;
 scalar_t__ ip_next (struct ip*) ;
 int memcpy (int*,int*,int) ;
 int ntohs (scalar_t__) ;
 int stdout ;

__attribute__((used)) static void
ProxyEncodeIpHeader(struct ip *pip,
    int maxpacketsize)
{



 u_char option[8];






 (void)maxpacketsize;


 if (pip->ip_hl > (0x0f - 2))
  return;


 {
  u_char *ptr;
  struct tcphdr *tc;

  ptr = (u_char *) pip;
  ptr += 20;
  memcpy(ptr + 8, ptr, ntohs(pip->ip_len) - 20);

  option[0] = 0x64;
  option[1] = 8;

  memcpy(&option[2], (u_char *) & pip->ip_dst, 4);

  tc = (struct tcphdr *)ip_next(pip);
  memcpy(&option[6], (u_char *) & tc->th_sport, 2);

  memcpy(ptr, option, 8);
 }


 {
  int i;
  int accumulate;
  u_short *sptr;

  sptr = (u_short *) option;
  accumulate = 0;
  for (i = 0; i < 4; i++)
   accumulate -= *(sptr++);

  sptr = (u_short *) pip;
  accumulate += *sptr;
  pip->ip_hl += 2;
  accumulate -= *sptr;

  accumulate += pip->ip_len;
  pip->ip_len = htons(ntohs(pip->ip_len) + 8);
  accumulate -= pip->ip_len;

  ADJUST_CHECKSUM(accumulate, pip->ip_sum);
 }







}
