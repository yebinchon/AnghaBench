
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vop_read_args {int a_vp; } ;
struct nfsnode {int n_atim; int n_flag; } ;
struct TYPE_2__ {int (* vop_read ) (struct vop_read_args*) ;} ;


 int NACC ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 struct nfsnode* VTONFS (int ) ;
 TYPE_1__ fifo_specops ;
 int stub1 (struct vop_read_args*) ;
 int vfs_timestamp (int *) ;

__attribute__((used)) static int
nfsfifo_read(struct vop_read_args *ap)
{
 struct nfsnode *np = VTONFS(ap->a_vp);
 int error;




 NFSLOCKNODE(np);
 np->n_flag |= NACC;
 vfs_timestamp(&np->n_atim);
 NFSUNLOCKNODE(np);
 error = fifo_specops.vop_read(ap);
 return error;
}
