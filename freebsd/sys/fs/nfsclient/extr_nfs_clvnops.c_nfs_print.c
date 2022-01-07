
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct vop_print_args {struct vnode* a_vp; } ;
struct vnode {scalar_t__ v_type; } ;
struct TYPE_2__ {scalar_t__ na_fsid; scalar_t__ na_fileid; } ;
struct nfsnode {TYPE_1__ n_vattr; } ;


 scalar_t__ VFIFO ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int fifo_printinfo (struct vnode*) ;
 int printf (char*,...) ;

__attribute__((used)) static int
nfs_print(struct vop_print_args *ap)
{
 struct vnode *vp = ap->a_vp;
 struct nfsnode *np = VTONFS(vp);

 printf("\tfileid %jd fsid 0x%jx", (uintmax_t)np->n_vattr.na_fileid,
     (uintmax_t)np->n_vattr.na_fsid);
 if (vp->v_type == VFIFO)
  fifo_printinfo(vp);
 printf("\n");
 return (0);
}
