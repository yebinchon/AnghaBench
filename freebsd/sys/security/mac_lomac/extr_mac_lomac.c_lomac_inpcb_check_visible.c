
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {int dummy; } ;


 int ENOENT ;
 struct mac_lomac* SLOT (struct label*) ;
 int lomac_dominate_single (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_enabled ;

__attribute__((used)) static int
lomac_inpcb_check_visible(struct ucred *cred, struct inpcb *inp,
    struct label *inplabel)
{
 struct mac_lomac *subj, *obj;

 if (!lomac_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(inplabel);

 if (!lomac_dominate_single(obj, subj))
  return (ENOENT);

 return (0);
}
