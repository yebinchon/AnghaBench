
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {struct label* cr_label; } ;
struct shmfd {int dummy; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;


 int EACCES ;
 struct mac_mls* SLOT (struct label*) ;
 int mls_dominate_effective (struct mac_mls*,struct mac_mls*) ;
 int mls_enabled ;

__attribute__((used)) static int
mls_posixshm_check_truncate(struct ucred *active_cred,
    struct ucred *file_cred, struct shmfd *shmfd, struct label *shmlabel)
{
 struct mac_mls *subj, *obj;

 if (!mls_enabled)
  return (0);

 subj = SLOT(active_cred->cr_label);
 obj = SLOT(shmlabel);

 if (!mls_dominate_effective(obj, subj))
  return (EACCES);

 return (0);
}
