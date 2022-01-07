
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ** u_char ;
struct ipv6cp {int **** his_ifid; int **** my_ifid; } ;
struct TYPE_2__ {int len; int id; } ;
struct fsm_opt {int *** data; TYPE_1__ hdr; } ;
struct fsm_decode {int dummy; } ;


 int IPV6CP_IFIDLEN ;
 int TY_TOKEN ;
 int fsm_ack (struct fsm_decode*,struct fsm_opt*) ;
 int fsm_nak (struct fsm_decode*,struct fsm_opt*) ;
 scalar_t__ memcmp (int ***,int ***,int) ;
 int memcpy (int **,int ***,int) ;
 int memset (int ***,int ,int) ;

__attribute__((used)) static void
ipv6cp_ValidateInterfaceID(struct ipv6cp *ipv6cp, u_char *ifid,
      struct fsm_decode *dec)
{
  struct fsm_opt opt;
  u_char zero[IPV6CP_IFIDLEN];

  memset(zero, 0, IPV6CP_IFIDLEN);

  if (memcmp(ifid, zero, IPV6CP_IFIDLEN) != 0
      && memcmp(ifid, ipv6cp->my_ifid, IPV6CP_IFIDLEN) != 0)
    memcpy(ipv6cp->his_ifid, ifid, IPV6CP_IFIDLEN);

  opt.hdr.id = TY_TOKEN;
  opt.hdr.len = IPV6CP_IFIDLEN + 2;
  memcpy(opt.data, &ipv6cp->his_ifid, IPV6CP_IFIDLEN);
  if (memcmp(ifid, ipv6cp->his_ifid, IPV6CP_IFIDLEN) == 0)
    fsm_ack(dec, &opt);
  else
    fsm_nak(dec, &opt);
}
