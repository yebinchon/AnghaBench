
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {struct label* cr_label; } ;
struct mac_mls {int dummy; } ;
struct label {int dummy; } ;
struct image_params {int dummy; } ;


 int EACCES ;
 struct mac_mls* SLOT (struct label*) ;
 int mls_atmostflags (struct mac_mls*,int ) ;
 int mls_dominate_effective (struct mac_mls*,struct mac_mls*) ;
 int mls_enabled ;

__attribute__((used)) static int
mls_vnode_check_exec(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct image_params *imgp,
    struct label *execlabel)
{
 struct mac_mls *subj, *obj, *exec;
 int error;

 if (execlabel != ((void*)0)) {





  exec = SLOT(execlabel);
  error = mls_atmostflags(exec, 0);
  if (error)
   return (error);
 }

 if (!mls_enabled)
  return (0);

 subj = SLOT(cred->cr_label);
 obj = SLOT(vplabel);

 if (!mls_dominate_effective(subj, obj))
  return (EACCES);

 return (0);
}
