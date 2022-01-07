
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vop_vptofh_args {int a_vp; scalar_t__ a_fhp; } ;
struct tmpfs_node {int tn_gen; int tn_id; } ;
struct tmpfs_fid {int tf_len; int tf_gen; int tf_id; } ;


 struct tmpfs_node* VP_TO_TMPFS_NODE (int ) ;

__attribute__((used)) static int
tmpfs_vptofh(struct vop_vptofh_args *ap)
{
 struct tmpfs_fid *tfhp;
 struct tmpfs_node *node;

 tfhp = (struct tmpfs_fid *)ap->a_fhp;
 node = VP_TO_TMPFS_NODE(ap->a_vp);

 tfhp->tf_len = sizeof(struct tmpfs_fid);
 tfhp->tf_id = node->tn_id;
 tfhp->tf_gen = node->tn_gen;

 return (0);
}
