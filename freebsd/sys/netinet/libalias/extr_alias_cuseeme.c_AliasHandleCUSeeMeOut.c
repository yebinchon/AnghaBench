
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct udphdr {int uh_dport; int uh_ulen; } ;
struct libalias {int dummy; } ;
struct ip {int ip_src; } ;
struct cu_header {scalar_t__ addr; } ;
struct alias_link {int dummy; } ;
struct TYPE_2__ {scalar_t__ s_addr; } ;


 struct alias_link* FindUdpTcpOut (struct libalias*,int ,int ,int ,int ,int ,int) ;
 TYPE_1__ GetAliasAddress (struct alias_link*) ;
 int GetDestAddress (struct alias_link*) ;
 int IPPROTO_UDP ;
 int PunchFWHole (struct alias_link*) ;
 struct udphdr* ip_next (struct ip*) ;
 int ntohs (int ) ;
 struct cu_header* udp_next (struct udphdr*) ;

__attribute__((used)) static void
AliasHandleCUSeeMeOut(struct libalias *la, struct ip *pip, struct alias_link *lnk)
{
 struct udphdr *ud = ip_next(pip);

 if (ntohs(ud->uh_ulen) - sizeof(struct udphdr) >= sizeof(struct cu_header)) {
  struct cu_header *cu;
  struct alias_link *cu_lnk;

  cu = udp_next(ud);
  if (cu->addr)
   cu->addr = (u_int32_t) GetAliasAddress(lnk).s_addr;

  cu_lnk = FindUdpTcpOut(la, pip->ip_src, GetDestAddress(lnk),
      ud->uh_dport, 0, IPPROTO_UDP, 1);


  if (cu_lnk)
   PunchFWHole(cu_lnk);

 }
}
