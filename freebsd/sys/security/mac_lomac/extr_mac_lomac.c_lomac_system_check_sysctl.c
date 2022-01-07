
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;
struct sysctl_req {int * newptr; } ;
struct sysctl_oid {int oid_kind; } ;
struct mac_lomac {int dummy; } ;


 int CTLFLAG_ANYBODY ;
 int EACCES ;
 int EPERM ;
 struct mac_lomac* SLOT (int ) ;
 int lomac_enabled ;
 int lomac_subject_dominate_high (struct mac_lomac*) ;
 scalar_t__ lomac_subject_privileged (struct mac_lomac*) ;

__attribute__((used)) static int
lomac_system_check_sysctl(struct ucred *cred, struct sysctl_oid *oidp,
    void *arg1, int arg2, struct sysctl_req *req)
{
 struct mac_lomac *subj;

 if (!lomac_enabled)
  return (0);

 subj = SLOT(cred->cr_label);





 if (req->newptr != ((void*)0) && (oidp->oid_kind & CTLFLAG_ANYBODY) == 0) {





  if (lomac_subject_privileged(subj))
   return (EPERM);
 }

 return (0);
}
