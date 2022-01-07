
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct libalias {int dummy; } ;
struct in_addr {int dummy; } ;
struct ip {struct in_addr ip_src; int ip_sum; int ip_dst; } ;
struct alias_link {int dummy; } ;
struct TYPE_2__ {int gh_call_id; } ;
typedef TYPE_1__ GreHdr ;


 int DifferentialChecksum (int *,struct in_addr*,struct in_addr*,int) ;
 struct alias_link* FindPptpOutByPeerCallId (struct libalias*,struct in_addr,int ,int ) ;
 struct in_addr GetAliasAddress (struct alias_link*) ;
 int PPTP_INIT_MASK ;
 int PPTP_INIT_VALUE ;
 scalar_t__ ip_next (struct ip*) ;
 int ntohl (int ) ;

__attribute__((used)) static int
AliasHandlePptpGreOut(struct libalias *la, struct ip *pip)
{
 GreHdr *gr;
 struct alias_link *lnk;

 gr = (GreHdr *) ip_next(pip);


 if ((ntohl(*((u_int32_t *) gr)) & PPTP_INIT_MASK) != PPTP_INIT_VALUE)
  return (-1);

 lnk = FindPptpOutByPeerCallId(la, pip->ip_src, pip->ip_dst, gr->gh_call_id);
 if (lnk != ((void*)0)) {
  struct in_addr alias_addr = GetAliasAddress(lnk);


  DifferentialChecksum(&pip->ip_sum,
      &alias_addr, &pip->ip_src, 2);
  pip->ip_src = alias_addr;
 }
 return (0);
}
