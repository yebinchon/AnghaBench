
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;
struct sysctl_req {int * newptr; } ;
struct sysctl_oid {int oid_kind; } ;
struct mac_biba {int dummy; } ;


 int CTLFLAG_ANYBODY ;
 int EACCES ;
 struct mac_biba* SLOT (int ) ;
 int biba_enabled ;
 int biba_subject_dominate_high (struct mac_biba*) ;
 int biba_subject_privileged (struct mac_biba*) ;

__attribute__((used)) static int
biba_system_check_sysctl(struct ucred *cred, struct sysctl_oid *oidp,
    void *arg1, int arg2, struct sysctl_req *req)
{
 struct mac_biba *subj;
 int error;

 if (!biba_enabled)
  return (0);

 subj = SLOT(cred->cr_label);





 if (req->newptr != ((void*)0) && (oidp->oid_kind & CTLFLAG_ANYBODY) == 0) {
  if (!biba_subject_dominate_high(subj))
   return (EACCES);

  error = biba_subject_privileged(subj);
  if (error)
   return (error);
 }

 return (0);
}
