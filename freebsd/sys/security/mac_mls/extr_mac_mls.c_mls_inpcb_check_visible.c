
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {int dummy; } ;


 int ENOENT ;
 struct mac_mls* SLOT (struct label*) ;
 int mls_dominate_effective (struct mac_mls*,struct mac_mls*) ;
 int mls_enabled ;

__attribute__((used)) static int
mls_inpcb_check_visible(struct ucred *cred, struct inpcb *inp,
    struct label *inplabel)
{
 struct mac_mls *subj, *obj;

 if (!mls_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(inplabel);

 if (!mls_dominate_effective(subj, obj))
  return (ENOENT);

 return (0);
}
