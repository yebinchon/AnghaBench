
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct shmid_kernel {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;


 int EACCES ;




 struct mac_mls* SLOT (struct label*) ;
 int mls_dominate_effective (struct mac_mls*,struct mac_mls*) ;
 int mls_enabled ;

__attribute__((used)) static int
mls_sysvshm_check_shmctl(struct ucred *cred, struct shmid_kernel *shmsegptr,
    struct label *shmseglabel, int cmd)
{
 struct mac_mls *subj, *obj;

 if (!mls_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(shmseglabel);

 switch(cmd) {
 case 131:
 case 130:
  if (!mls_dominate_effective(obj, subj))
   return (EACCES);
  break;

 case 129:
 case 128:
  if (!mls_dominate_effective(subj, obj))
   return (EACCES);
  break;

 default:
  return (EACCES);
 }

 return (0);
}
