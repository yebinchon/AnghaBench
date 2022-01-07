
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct pipepair {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;


 struct mac_lomac* SLOT (struct label*) ;
 int lomac_dominate_single (struct mac_lomac*,struct mac_lomac*) ;
 int lomac_enabled ;
 int maybe_demote (struct mac_lomac*,struct mac_lomac*,char*,char*,int *) ;

__attribute__((used)) static int
lomac_pipe_check_read(struct ucred *cred, struct pipepair *pp,
    struct label *pplabel)
{
 struct mac_lomac *subj, *obj;

 if (!lomac_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(pplabel);

 if (!lomac_dominate_single(obj, subj))
  return (maybe_demote(subj, obj, "reading", "pipe", ((void*)0)));

 return (0);
}
