
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uidinfo {int ui_uid; } ;
struct ucred {struct uidinfo* cr_ruidinfo; int cr_ruid; } ;


 int chgproccnt (struct uidinfo*,int,int ) ;
 int uifree (struct uidinfo*) ;
 int uihold (struct uidinfo*) ;

void
change_ruid(struct ucred *newcred, struct uidinfo *ruip)
{

 (void)chgproccnt(newcred->cr_ruidinfo, -1, 0);
 newcred->cr_ruid = ruip->ui_uid;
 uihold(ruip);
 uifree(newcred->cr_ruidinfo);
 newcred->cr_ruidinfo = ruip;
 (void)chgproccnt(newcred->cr_ruidinfo, 1, 0);
}
