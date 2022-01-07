
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_quad_t ;
struct vnode {int v_type; TYPE_1__* v_mount; } ;
struct ucred {int dummy; } ;
struct tmpfs_node {int tn_flags; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int mnt_flag; } ;


 int APPEND ;
 int ASSERT_VOP_ELOCKED (struct vnode*,char*) ;
 int EISDIR ;
 int EOPNOTSUPP ;
 int EPERM ;
 int EROFS ;
 int IMMUTABLE ;
 int MNT_RDONLY ;




 struct tmpfs_node* VP_TO_TMPFS_NODE (struct vnode*) ;

 int tmpfs_truncate (struct vnode*,int ) ;

int
tmpfs_chsize(struct vnode *vp, u_quad_t size, struct ucred *cred,
    struct thread *p)
{
 int error;
 struct tmpfs_node *node;

 ASSERT_VOP_ELOCKED(vp, "chsize");

 node = VP_TO_TMPFS_NODE(vp);


 error = 0;
 switch (vp->v_type) {
 case 130:
  return EISDIR;

 case 128:
  if (vp->v_mount->mnt_flag & MNT_RDONLY)
   return EROFS;
  break;

 case 132:

 case 131:

 case 129:



  return 0;

 default:

  return EOPNOTSUPP;
 }


 if (node->tn_flags & (IMMUTABLE | APPEND))
  return EPERM;

 error = tmpfs_truncate(vp, size);



 ASSERT_VOP_ELOCKED(vp, "chsize2");

 return (error);
}
