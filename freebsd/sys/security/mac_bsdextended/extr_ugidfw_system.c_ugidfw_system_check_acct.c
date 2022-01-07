
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;


 int MBI_WRITE ;
 int ugidfw_check_vp (struct ucred*,struct vnode*,int ) ;

int
ugidfw_system_check_acct(struct ucred *cred, struct vnode *vp,
    struct label *vplabel)
{

 if (vp != ((void*)0))
  return (ugidfw_check_vp(cred, vp, MBI_WRITE));
 else
  return (0);
}
