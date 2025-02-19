
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct shmfd {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;


 int EACCES ;
 int MAP_SHARED ;
 struct mac_mls* SLOT (struct label*) ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VM_PROT_WRITE ;
 int mls_dominate_effective (struct mac_mls*,struct mac_mls*) ;
 int mls_enabled ;

__attribute__((used)) static int
mls_posixshm_check_mmap(struct ucred *cred, struct shmfd *shmfd,
    struct label *shmlabel, int prot, int flags)
{
 struct mac_mls *subj, *obj;

 if (!mls_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(shmlabel);

 if (prot & (VM_PROT_READ | VM_PROT_EXECUTE)) {
  if (!mls_dominate_effective(subj, obj))
   return (EACCES);
 }
 if (((prot & VM_PROT_WRITE) != 0) && ((flags & MAP_SHARED) != 0)) {
  if (!mls_dominate_effective(obj, subj))
   return (EACCES);
 }

 return (0);
}
