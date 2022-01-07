
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_write_args {int a_vp; } ;
struct nfsnode {int n_mtim; int n_flag; } ;
struct TYPE_2__ {int (* vop_write ) (struct vop_write_args*) ;} ;


 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int NUPD ;
 struct nfsnode* VTONFS (int ) ;
 TYPE_1__ fifo_specops ;
 int stub1 (struct vop_write_args*) ;
 int vfs_timestamp (int *) ;

__attribute__((used)) static int
nfsfifo_write(struct vop_write_args *ap)
{
 struct nfsnode *np = VTONFS(ap->a_vp);




 NFSLOCKNODE(np);
 np->n_flag |= NUPD;
 vfs_timestamp(&np->n_mtim);
 NFSUNLOCKNODE(np);
 return(fifo_specops.vop_write(ap));
}
