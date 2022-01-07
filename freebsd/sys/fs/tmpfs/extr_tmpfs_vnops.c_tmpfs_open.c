
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vop_open_args {int a_mode; int a_td; struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct TYPE_4__ {TYPE_1__* tn_aobj; } ;
struct tmpfs_node {int tn_links; int tn_flags; int tn_size; TYPE_2__ tn_reg; } ;
struct TYPE_3__ {int flags; } ;


 int APPEND ;
 int ENOENT ;
 int EPERM ;
 int FWRITE ;
 int KASSERT (int,char*) ;
 int MPASS (int ) ;
 int OBJ_DEAD ;
 int O_APPEND ;
 int VOP_ISLOCKED (struct vnode*) ;
 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;
 scalar_t__ VREG ;
 int vnode_create_vobject (struct vnode*,int ,int ) ;

__attribute__((used)) static int
tmpfs_open(struct vop_open_args *v)
{
 struct vnode *vp = v->a_vp;
 int mode = v->a_mode;

 int error;
 struct tmpfs_node *node;

 MPASS(VOP_ISLOCKED(vp));

 node = VP_TO_TMPFS_NODE(vp);




 if (node->tn_links < 1)
  return (ENOENT);


 if (node->tn_flags & APPEND && (mode & (FWRITE | O_APPEND)) == FWRITE)
  error = EPERM;
 else {
  error = 0;

  KASSERT(vp->v_type != VREG || (node->tn_reg.tn_aobj->flags &
      OBJ_DEAD) == 0, ("dead object"));
  vnode_create_vobject(vp, node->tn_size, v->a_td);
 }

 MPASS(VOP_ISLOCKED(vp));
 return error;
}
