
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;
struct mac_lomac {int dummy; } ;


 int ESRCH ;
 struct mac_lomac* SLOT (int ) ;
 int lomac_dominate_single (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_enabled ;

__attribute__((used)) static int
lomac_cred_check_visible(struct ucred *cr1, struct ucred *cr2)
{
 struct mac_lomac *subj, *obj;

 if (!lomac_enabled)
  return (0);

 subj = SLOT(cr1->cr_label);
 obj = SLOT(cr2->cr_label);


 if (!lomac_dominate_single(obj, subj))
  return (ESRCH);

 return (0);
}
