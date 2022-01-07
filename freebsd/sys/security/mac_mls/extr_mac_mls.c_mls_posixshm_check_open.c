
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct shmfd {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
typedef int accmode_t ;


 int EACCES ;
 struct mac_mls* SLOT (struct label*) ;
 int VEXEC ;
 int VMODIFY_PERMS ;
 int VREAD ;
 int VSTAT_PERMS ;
 int mls_dominate_effective (struct mac_mls*,struct mac_mls*) ;
 int mls_enabled ;

__attribute__((used)) static int
mls_posixshm_check_open(struct ucred *cred, struct shmfd *shmfd,
    struct label *shmlabel, accmode_t accmode)
{
 struct mac_mls *subj, *obj;

 if (!mls_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(shmlabel);

 if (accmode & (VREAD | VEXEC | VSTAT_PERMS)) {
  if (!mls_dominate_effective(subj, obj))
   return (EACCES);
 }
 if (accmode & VMODIFY_PERMS) {
  if (!mls_dominate_effective(obj, subj))
   return (EACCES);
 }

 return (0);
}
