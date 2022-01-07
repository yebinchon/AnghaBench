
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct image_params {int dummy; } ;


 int EINVAL ;
 scalar_t__ SLOT (struct label*) ;

__attribute__((used)) static int
partition_vnode_check_exec(struct ucred *cred, struct vnode *vp,
    struct label *vplabel, struct image_params *imgp,
    struct label *execlabel)
{

 if (execlabel != ((void*)0)) {





  if (SLOT(execlabel) != 0)
   return (EINVAL);
 }

 return (0);
}
