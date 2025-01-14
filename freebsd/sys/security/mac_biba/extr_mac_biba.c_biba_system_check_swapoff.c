
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int cr_label; } ;
struct mac_biba {int dummy; } ;
struct label {int dummy; } ;


 struct mac_biba* SLOT (int ) ;
 int biba_enabled ;
 int biba_subject_privileged (struct mac_biba*) ;

__attribute__((used)) static int
biba_system_check_swapoff(struct ucred *cred, struct vnode *vp,
    struct label *label)
{
 struct mac_biba *subj;
 int error;

 if (!biba_enabled)
  return (0);

 subj = SLOT(cred->cr_label);

 error = biba_subject_privileged(subj);
 if (error)
  return (error);

 return (0);
}
