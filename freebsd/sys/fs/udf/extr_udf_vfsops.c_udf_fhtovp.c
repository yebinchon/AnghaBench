
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct udf_node {TYPE_1__* fentry; } ;
struct mount {int dummy; } ;
struct ifid {int ifid_ino; } ;
struct fid {int dummy; } ;
typedef int off_t ;
struct TYPE_2__ {int inf_len; } ;


 int LK_EXCLUSIVE ;
 struct vnode* NULLVP ;
 int VFS_VGET (struct mount*,int ,int ,struct vnode**) ;
 struct udf_node* VTON (struct vnode*) ;
 int curthread ;
 int le64toh (int ) ;
 int vnode_create_vobject (struct vnode*,int ,int ) ;

__attribute__((used)) static int
udf_fhtovp(struct mount *mp, struct fid *fhp, int flags, struct vnode **vpp)
{
 struct ifid *ifhp;
 struct vnode *nvp;
 struct udf_node *np;
 off_t fsize;
 int error;

 ifhp = (struct ifid *)fhp;

 if ((error = VFS_VGET(mp, ifhp->ifid_ino, LK_EXCLUSIVE, &nvp)) != 0) {
  *vpp = NULLVP;
  return (error);
 }

 np = VTON(nvp);
 fsize = le64toh(np->fentry->inf_len);

 *vpp = nvp;
 vnode_create_vobject(*vpp, fsize, curthread);
 return (0);
}
