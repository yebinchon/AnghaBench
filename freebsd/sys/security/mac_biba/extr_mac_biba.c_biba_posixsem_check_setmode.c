
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;
struct ksem {int dummy; } ;
typedef int mode_t ;


 int EACCES ;
 struct mac_biba* SLOT (struct label*) ;
 int biba_dominate_effective (struct mac_biba*,struct mac_biba*) ;
 int biba_enabled ;

__attribute__((used)) static int
biba_posixsem_check_setmode(struct ucred *cred, struct ksem *ks,
    struct label *kslabel, mode_t mode)
{
 struct mac_biba *subj, *obj;

 if (!biba_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(kslabel);

 if (!biba_dominate_effective(subj, obj))
  return (EACCES);

 return (0);
}
