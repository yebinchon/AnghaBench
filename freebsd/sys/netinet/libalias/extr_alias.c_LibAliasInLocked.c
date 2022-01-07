
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libalias {int packetAliasMode; } ;
struct in_addr {int dummy; } ;
struct ip {int ip_hl; int ip_p; int ip_sum; int ip_id; struct in_addr ip_dst; int ip_src; int ip_off; int ip_len; } ;
struct alias_link {int dummy; } ;
struct alias_data {int maxpktsize; int * dport; int * sport; int * aport; int * aaddr; int * oaddr; int * lnk; } ;


 int ClearCheckNewLink (struct libalias*) ;
 struct alias_link* FindFragmentIn1 (struct libalias*,int ,struct in_addr,int ) ;
 int FragmentIn (struct libalias*,int ,struct in_addr*,int ,int *) ;
 int HouseKeeping (struct libalias*) ;
 int IN ;
 int IP ;





 int IP_MF ;
 int IP_OFFMASK ;
 int IcmpAliasIn (struct libalias*,struct ip*) ;
 int LibAliasOutLocked (struct libalias*,char*,int,int) ;
 int PKT_ALIAS_ERROR ;
 int PKT_ALIAS_FOUND_HEADER_FRAGMENT ;
 int PKT_ALIAS_IGNORED ;
 int PKT_ALIAS_OK ;
 int PKT_ALIAS_REVERSE ;
 int ProtoAliasIn (struct libalias*,int ,struct in_addr*,int,int *) ;
 int SN_TO_LOCAL ;
 int SctpAlias (struct libalias*,struct ip*,int ) ;
 int SetFragmentAddr (struct alias_link*,struct in_addr) ;
 int TcpAliasIn (struct libalias*,struct ip*) ;
 int UdpAliasIn (struct libalias*,struct ip*) ;
 int find_handler (int ,int ,struct libalias*,struct ip*,struct alias_data*) ;
 int ntohs (int ) ;

__attribute__((used)) static int
LibAliasInLocked(struct libalias *la, char *ptr, int maxpacketsize)
{
 struct in_addr alias_addr;
 struct ip *pip;
 int iresult;

 if (la->packetAliasMode & PKT_ALIAS_REVERSE) {
  la->packetAliasMode &= ~PKT_ALIAS_REVERSE;
  iresult = LibAliasOutLocked(la, ptr, maxpacketsize, 1);
  la->packetAliasMode |= PKT_ALIAS_REVERSE;
  goto getout;
 }
 HouseKeeping(la);
 ClearCheckNewLink(la);
 pip = (struct ip *)ptr;
 alias_addr = pip->ip_dst;


 if (ntohs(pip->ip_len) > maxpacketsize
     || (pip->ip_hl << 2) > maxpacketsize) {
  iresult = PKT_ALIAS_IGNORED;
  goto getout;
 }

 iresult = PKT_ALIAS_IGNORED;
 if ((ntohs(pip->ip_off) & IP_OFFMASK) == 0) {
  switch (pip->ip_p) {
  case 131:
   iresult = IcmpAliasIn(la, pip);
   break;
  case 128:
   iresult = UdpAliasIn(la, pip);
   break;
  case 129:
   iresult = TcpAliasIn(la, pip);
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


   error = find_handler(IN, IP, la, pip, &ad);
   if (error == 0)
    iresult = PKT_ALIAS_OK;
   else
    iresult = ProtoAliasIn(la, pip->ip_src,
        &pip->ip_dst, pip->ip_p, &pip->ip_sum);
  }
    break;
  default:
   iresult = ProtoAliasIn(la, pip->ip_src, &pip->ip_dst,
       pip->ip_p, &pip->ip_sum);
   break;
  }

  if (ntohs(pip->ip_off) & IP_MF) {
   struct alias_link *lnk;

   lnk = FindFragmentIn1(la, pip->ip_src, alias_addr, pip->ip_id);
   if (lnk != ((void*)0)) {
    iresult = PKT_ALIAS_FOUND_HEADER_FRAGMENT;
    SetFragmentAddr(lnk, pip->ip_dst);
   } else {
    iresult = PKT_ALIAS_ERROR;
   }
  }
 } else {
  iresult = FragmentIn(la, pip->ip_src, &pip->ip_dst, pip->ip_id,
      &pip->ip_sum);
 }

getout:
 return (iresult);
}
