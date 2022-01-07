
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uidinfo {int ui_uid; } ;
struct ucred {struct uidinfo* cr_uidinfo; int cr_uid; } ;


 int uifree (struct uidinfo*) ;
 int uihold (struct uidinfo*) ;

void
change_euid(struct ucred *newcred, struct uidinfo *euip)
{

 newcred->cr_uid = euip->ui_uid;
 uihold(euip);
 uifree(newcred->cr_uidinfo);
 newcred->cr_uidinfo = euip;
}
