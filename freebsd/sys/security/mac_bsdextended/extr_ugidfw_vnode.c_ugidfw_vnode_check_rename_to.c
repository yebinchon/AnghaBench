
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct ucred {int dummy; } ;
struct label {int dummy; } ;
struct componentname {int dummy; } ;


 int MBI_WRITE ;
 int ugidfw_check_vp (struct ucred*,struct vnode*,int ) ;

int
ugidfw_vnode_check_rename_to(struct ucred *cred, struct vnode *dvp,
    struct label *dvplabel, struct vnode *vp, struct label *vplabel,
    int samedir, struct componentname *cnp)
{
 int error;

 error = ugidfw_check_vp(cred, dvp, MBI_WRITE);
 if (error)
  return (error);
 if (vp != ((void*)0))
  error = ugidfw_check_vp(cred, vp, MBI_WRITE);
 return (error);
}
