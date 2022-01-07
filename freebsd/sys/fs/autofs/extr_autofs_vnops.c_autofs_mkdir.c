
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_mkdir_args {int a_vpp; TYPE_1__* a_cnp; struct vnode* a_dvp; } ;
struct vnode {int v_mount; struct autofs_node* v_data; } ;
struct autofs_node {int dummy; } ;
struct autofs_mount {int dummy; } ;
struct TYPE_2__ {int cn_namelen; int cn_nameptr; } ;


 int AUTOFS_XLOCK (struct autofs_mount*) ;
 int AUTOFS_XUNLOCK (struct autofs_mount*) ;
 int EPERM ;
 int LK_EXCLUSIVE ;
 struct autofs_mount* VFSTOAUTOFS (int ) ;
 int autofs_ignore_thread (int ) ;
 int autofs_node_new (struct autofs_node*,struct autofs_mount*,int ,int ,struct autofs_node**) ;
 int autofs_node_vn (struct autofs_node*,int ,int ,int ) ;
 int curthread ;

__attribute__((used)) static int
autofs_mkdir(struct vop_mkdir_args *ap)
{
 struct vnode *vp;
 struct autofs_node *anp;
 struct autofs_mount *amp;
 struct autofs_node *child;
 int error;

 vp = ap->a_dvp;
 anp = vp->v_data;
 amp = VFSTOAUTOFS(vp->v_mount);





 if (autofs_ignore_thread(curthread) == 0)
  return (EPERM);

 AUTOFS_XLOCK(amp);
 error = autofs_node_new(anp, amp, ap->a_cnp->cn_nameptr,
     ap->a_cnp->cn_namelen, &child);
 if (error != 0) {
  AUTOFS_XUNLOCK(amp);
  return (error);
 }
 AUTOFS_XUNLOCK(amp);

 error = autofs_node_vn(child, vp->v_mount, LK_EXCLUSIVE, ap->a_vpp);

 return (error);
}
