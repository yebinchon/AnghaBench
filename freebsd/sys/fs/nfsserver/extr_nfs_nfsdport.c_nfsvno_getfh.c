
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnode {TYPE_2__* v_mount; } ;
struct thread {int dummy; } ;
struct TYPE_7__ {int fh_fid; int fh_fsid; } ;
typedef TYPE_3__ fhandle_t ;
typedef int caddr_t ;
struct TYPE_5__ {int f_fsid; } ;
struct TYPE_6__ {TYPE_1__ mnt_stat; } ;


 int NFSBZERO (int ,int) ;
 int NFSEXITCODE (int) ;
 int VOP_VPTOFH (struct vnode*,int *) ;

int
nfsvno_getfh(struct vnode *vp, fhandle_t *fhp, struct thread *p)
{
 int error;

 NFSBZERO((caddr_t)fhp, sizeof(fhandle_t));
 fhp->fh_fsid = vp->v_mount->mnt_stat.f_fsid;
 error = VOP_VPTOFH(vp, &fhp->fh_fid);

 NFSEXITCODE(error);
 return (error);
}
