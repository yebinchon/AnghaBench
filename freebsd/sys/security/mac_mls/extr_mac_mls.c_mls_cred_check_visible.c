
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;
struct mac_mls {int dummy; } ;


 int ESRCH ;
 struct mac_mls* SLOT (int ) ;
 int mls_dominate_effective (struct mac_mls*,struct mac_mls*) ;
 int mls_enabled ;

__attribute__((used)) static int
mls_cred_check_visible(struct ucred *cr1, struct ucred *cr2)
{
 struct mac_mls *subj, *obj;

 if (!mls_enabled)
  return (0);

 subj = SLOT(cr1->cr_label);
 obj = SLOT(cr2->cr_label);


 if (!mls_dominate_effective(subj, obj))
  return (ESRCH);

 return (0);
}
