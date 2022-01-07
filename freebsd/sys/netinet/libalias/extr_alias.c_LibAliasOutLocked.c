
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct libalias {int packetAliasMode; } ;
struct in_addr {int s_addr; } ;
struct ip {int ip_hl; int ip_p; int ip_sum; struct in_addr ip_src; int ip_dst; int ip_off; int ip_len; } ;
struct alias_data {int maxpktsize; int * dport; int * sport; int * aport; int * aaddr; int * oaddr; int * lnk; } ;


 int ClearCheckNewLink (struct libalias*) ;
 int FragmentOut (struct libalias*,struct in_addr*,int *) ;
 struct in_addr GetDefaultAliasAddress (struct libalias*) ;
 int HouseKeeping (struct libalias*) ;
 int IP ;





 int IP_OFFMASK ;
 int IcmpAliasOut (struct libalias*,struct ip*,int) ;
 int LibAliasInLocked (struct libalias*,char*,int) ;
 int OUT ;
 int PKT_ALIAS_IGNORED ;
 int PKT_ALIAS_OK ;
 int PKT_ALIAS_PROXY_ONLY ;
 int PKT_ALIAS_REVERSE ;
 int PKT_ALIAS_UNREGISTERED_ONLY ;
 int ProtoAliasOut (struct libalias*,struct in_addr*,int ,int,int *,int) ;
 int SN_TO_GLOBAL ;
 int SctpAlias (struct libalias*,struct ip*,int ) ;
 int SetDefaultAliasAddress (struct libalias*,struct in_addr) ;
 int TcpAliasOut (struct libalias*,struct ip*,int,int) ;
 scalar_t__ UNREG_ADDR_A_LOWER ;
 scalar_t__ UNREG_ADDR_A_UPPER ;
 scalar_t__ UNREG_ADDR_B_LOWER ;
 scalar_t__ UNREG_ADDR_B_UPPER ;
 scalar_t__ UNREG_ADDR_C_LOWER ;
 scalar_t__ UNREG_ADDR_C_UPPER ;
 int UdpAliasOut (struct libalias*,struct ip*,int,int) ;
 int find_handler (int ,int ,struct libalias*,struct ip*,struct alias_data*) ;
 scalar_t__ ntohl (int ) ;
 int ntohs (int ) ;

__attribute__((used)) static int
LibAliasOutLocked(struct libalias *la, char *ptr,
    int maxpacketsize,

    int create
)
{
 int iresult;
 struct in_addr addr_save;
 struct ip *pip;

 if (la->packetAliasMode & PKT_ALIAS_REVERSE) {
  la->packetAliasMode &= ~PKT_ALIAS_REVERSE;
  iresult = LibAliasInLocked(la, ptr, maxpacketsize);
  la->packetAliasMode |= PKT_ALIAS_REVERSE;
  goto getout;
 }
 HouseKeeping(la);
 ClearCheckNewLink(la);
 pip = (struct ip *)ptr;


 if (ntohs(pip->ip_len) > maxpacketsize
     || (pip->ip_hl << 2) > maxpacketsize) {
  iresult = PKT_ALIAS_IGNORED;
  goto getout;
 }

 addr_save = GetDefaultAliasAddress(la);
 if (la->packetAliasMode & PKT_ALIAS_UNREGISTERED_ONLY) {
  u_long addr;
  int iclass;

  iclass = 0;
  addr = ntohl(pip->ip_src.s_addr);
  if (addr >= UNREG_ADDR_C_LOWER && addr <= UNREG_ADDR_C_UPPER)
   iclass = 3;
  else if (addr >= UNREG_ADDR_B_LOWER && addr <= UNREG_ADDR_B_UPPER)
   iclass = 2;
  else if (addr >= UNREG_ADDR_A_LOWER && addr <= UNREG_ADDR_A_UPPER)
   iclass = 1;

  if (iclass == 0) {
   SetDefaultAliasAddress(la, pip->ip_src);
  }
 } else if (la->packetAliasMode & PKT_ALIAS_PROXY_ONLY) {
  SetDefaultAliasAddress(la, pip->ip_src);
 }
 iresult = PKT_ALIAS_IGNORED;
 if ((ntohs(pip->ip_off) & IP_OFFMASK) == 0) {
  switch (pip->ip_p) {
  case 131:
   iresult = IcmpAliasOut(la, pip, create);
   break;
  case 128:
   iresult = UdpAliasOut(la, pip, maxpacketsize, create);
   break;
  case 129:
   iresult = TcpAliasOut(la, pip, maxpacketsize, create);
   break;





  case 132: {
   int error;
   struct alias_data ad = {
    .lnk = ((void*)0),
    .oaddr = ((void*)0),
    .aaddr = ((void*)0),
    .aport = ((void*)0),
    .sport = ((void*)0),
    .dport = ((void*)0),
    .maxpktsize = 0
   };

   error = find_handler(OUT, IP, la, pip, &ad);
   if (error == 0)
     iresult = PKT_ALIAS_OK;
    else
     iresult = ProtoAliasOut(la, &pip->ip_src,
        pip->ip_dst, pip->ip_p, &pip->ip_sum, create);
  }
    break;
  default:
   iresult = ProtoAliasOut(la, &pip->ip_src,
       pip->ip_dst, pip->ip_p, &pip->ip_sum, create);
   break;
  }
 } else {
  iresult = FragmentOut(la, &pip->ip_src, &pip->ip_sum);
 }

 SetDefaultAliasAddress(la, addr_save);
getout:
 return (iresult);
}
