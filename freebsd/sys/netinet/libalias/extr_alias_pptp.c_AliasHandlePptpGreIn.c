
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct ip {struct in_addr ip_dst; int ip_sum; int ip_src; } ;
struct alias_link {int dummy; } ;
struct TYPE_2__ {int gh_call_id; } ;
typedef TYPE_1__ GreHdr ;


 int DifferentialChecksum (int *,struct in_addr*,struct in_addr*,int) ;
 struct alias_link* FindPptpInByPeerCallId (struct libalias*,int ,struct in_addr,int ) ;
 struct in_addr GetOriginalAddress (struct alias_link*) ;
 int GetOriginalPort (struct alias_link*) ;
 int PPTP_INIT_MASK ;
 int PPTP_INIT_VALUE ;
 scalar_t__ ip_next (struct ip*) ;
 int ntohl (int ) ;

__attribute__((used)) static int
AliasHandlePptpGreIn(struct libalias *la, struct ip *pip)
{
 GreHdr *gr;
 struct alias_link *lnk;

 gr = (GreHdr *) ip_next(pip);


 if ((ntohl(*((u_int32_t *) gr)) & PPTP_INIT_MASK) != PPTP_INIT_VALUE)
  return (-1);

 lnk = FindPptpInByPeerCallId(la, pip->ip_src, pip->ip_dst, gr->gh_call_id);
 if (lnk != ((void*)0)) {
  struct in_addr src_addr = GetOriginalAddress(lnk);


  gr->gh_call_id = GetOriginalPort(lnk);


  DifferentialChecksum(&pip->ip_sum,
      &src_addr, &pip->ip_dst, 2);
  pip->ip_dst = src_addr;
 }
 return (0);
}
