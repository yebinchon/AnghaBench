
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;
struct mac_biba {int dummy; } ;


 int ESRCH ;
 struct mac_biba* SLOT (int ) ;
 int biba_dominate_effective (struct mac_biba*,struct mac_biba*) ;
 int biba_enabled ;

__attribute__((used)) static int
biba_cred_check_visible(struct ucred *u1, struct ucred *u2)
{
 struct mac_biba *subj, *obj;

 if (!biba_enabled)
  return (0);

 subj = SLOT(u1->cr_label);
 obj = SLOT(u2->cr_label);


 if (!biba_dominate_effective(obj, subj))
  return (ESRCH);

 return (0);
}
