
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int16_t ;
struct tcphdr {int th_sum; } ;
struct libalias {int dummy; } ;
struct ip {int dummy; } ;
struct alias_link {int dummy; } ;
struct TYPE_5__ {int cid1; int cid2; } ;
struct TYPE_4__ {int resCode; } ;
typedef TYPE_1__* PptpCode ;
typedef TYPE_2__* PptpCallId ;


 int ADJUST_CHECKSUM (int,int ) ;
 struct alias_link* AddPptp (struct libalias*,int ,int ,int ,int) ;
 TYPE_2__* AliasVerifyPptp (struct ip*,int*) ;
 struct alias_link* FindPptpOutByCallId (struct libalias*,int ,int ,int) ;
 int GetAliasAddress (struct alias_link*) ;
 int GetAliasPort (struct alias_link*) ;
 int GetDestAddress (struct alias_link*) ;
 int GetOriginalAddress (struct alias_link*) ;






 int SetDestCallId (struct alias_link*,int ) ;
 int SetExpire (struct alias_link*,int ) ;
 scalar_t__ ip_next (struct ip*) ;

__attribute__((used)) static void
AliasHandlePptpOut(struct libalias *la,
    struct ip *pip,
    struct alias_link *lnk)
{
 struct alias_link *pptp_lnk;
 PptpCallId cptr;
 PptpCode codes;
 u_int16_t ctl_type;
 struct tcphdr *tc;


 if ((cptr = AliasVerifyPptp(pip, &ctl_type)) == ((void*)0))
  return;


 switch (ctl_type) {
 case 128:
 case 129:
 case 130:
 case 131:




  pptp_lnk = AddPptp(la, GetOriginalAddress(lnk), GetDestAddress(lnk),
      GetAliasAddress(lnk), cptr->cid1);
  break;
 case 133:
 case 132:




  pptp_lnk = FindPptpOutByCallId(la, GetOriginalAddress(lnk),
      GetDestAddress(lnk),
      cptr->cid1);
  break;
 default:
  return;
 }

 if (pptp_lnk != ((void*)0)) {
  int accumulate = cptr->cid1;


  cptr->cid1 = GetAliasPort(pptp_lnk);


  tc = (struct tcphdr *)ip_next(pip);
  accumulate -= cptr->cid1;
  ADJUST_CHECKSUM(accumulate, tc->th_sum);

  switch (ctl_type) {
  case 129:
  case 131:
   codes = (PptpCode) (cptr + 1);
   if (codes->resCode == 1)

    SetDestCallId(pptp_lnk,

        cptr->cid2);
   else
    SetExpire(pptp_lnk, 0);
   break;
  case 132:
   SetExpire(pptp_lnk, 0);
   break;
  }
 }
}
