
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
 TYPE_2__* AliasVerifyPptp (struct ip*,int*) ;
 struct alias_link* FindPptpInByCallId (struct libalias*,int ,int ,int) ;
 struct alias_link* FindPptpInByPeerCallId (struct libalias*,int ,int ,int) ;
 int GetAliasAddress (struct alias_link*) ;
 int GetDestAddress (struct alias_link*) ;
 int GetOriginalPort (struct alias_link*) ;






 int SetDestCallId (struct alias_link*,int) ;
 int SetExpire (struct alias_link*,int ) ;
 scalar_t__ ip_next (struct ip*) ;

__attribute__((used)) static void
AliasHandlePptpIn(struct libalias *la,
    struct ip *pip,
    struct alias_link *lnk)
{
 struct alias_link *pptp_lnk;
 PptpCallId cptr;
 u_int16_t *pcall_id;
 u_int16_t ctl_type;
 struct tcphdr *tc;


 if ((cptr = AliasVerifyPptp(pip, &ctl_type)) == ((void*)0))
  return;


 switch (ctl_type) {
 case 132:
 case 128:
 case 129:
  pcall_id = &cptr->cid1;
  break;
 case 130:
 case 131:
  pcall_id = &cptr->cid2;
  break;
 case 133:
  pptp_lnk = FindPptpInByCallId(la, GetDestAddress(lnk),
      GetAliasAddress(lnk),
      cptr->cid1);
  if (pptp_lnk != ((void*)0))
   SetExpire(pptp_lnk, 0);
  return;
 default:
  return;
 }


 pptp_lnk = FindPptpInByPeerCallId(la, GetDestAddress(lnk),
     GetAliasAddress(lnk),
     *pcall_id);

 if (pptp_lnk != ((void*)0)) {
  int accumulate = *pcall_id;


  *pcall_id = GetOriginalPort(pptp_lnk);


  tc = (struct tcphdr *)ip_next(pip);
  accumulate -= *pcall_id;
  ADJUST_CHECKSUM(accumulate, tc->th_sum);

  if (ctl_type == 130 || ctl_type == 131) {
   PptpCode codes = (PptpCode) (cptr + 1);

   if (codes->resCode == 1)

    SetDestCallId(pptp_lnk,
        cptr->cid1);
   else
    SetExpire(pptp_lnk, 0);
  }
 }
}
