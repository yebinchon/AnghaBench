
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vop_remove_args {TYPE_2__* a_cnp; TYPE_3__* a_vp; TYPE_1__* a_dvp; } ;
struct mqfs_node {int dummy; } ;
struct mqfs_info {int mi_lock; } ;
struct TYPE_6__ {scalar_t__ v_type; } ;
struct TYPE_5__ {int cn_cred; } ;
struct TYPE_4__ {int v_mount; } ;


 int EPERM ;
 scalar_t__ VDIR ;
 struct mqfs_info* VFSTOMQFS (int ) ;
 struct mqfs_node* VTON (TYPE_3__*) ;
 int do_unlink (struct mqfs_node*,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
mqfs_remove(struct vop_remove_args *ap)
{
 struct mqfs_info *mqfs = VFSTOMQFS(ap->a_dvp->v_mount);
 struct mqfs_node *pn;
 int error;

 if (ap->a_vp->v_type == VDIR)
                return (EPERM);
 pn = VTON(ap->a_vp);
 sx_xlock(&mqfs->mi_lock);
 error = do_unlink(pn, ap->a_cnp->cn_cred);
 sx_xunlock(&mqfs->mi_lock);
 return (error);
}
