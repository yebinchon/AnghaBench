
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_vflag; int v_type; } ;
struct mount {int mnt_flag; struct fdescmount* mnt_data; int mnt_optnew; } ;
struct fdescmount {struct vnode* f_root; int flags; } ;


 int EOPNOTSUPP ;
 int FD_ROOT ;
 int FMNT_LINRDLNKF ;
 int Froot ;
 int MNT_ROOTFS ;
 int MNT_UPDATE ;
 int M_FDESCMNT ;
 int M_WAITOK ;
 int VDIR ;
 int VOP_UNLOCK (struct vnode*,int ) ;
 int VV_ROOT ;
 int fdesc_allocvp (int ,int,int ,struct mount*,struct vnode**) ;
 int free (struct fdescmount*,int ) ;
 struct fdescmount* malloc (int,int ,int ) ;
 int vfs_getnewfsid (struct mount*) ;
 scalar_t__ vfs_getopt (int ,char*,int *,int *) ;
 int vfs_mountedfrom (struct mount*,char*) ;

__attribute__((used)) static int
fdesc_mount(struct mount *mp)
{
 struct fdescmount *fmp;
 struct vnode *rvp;
 int error;




 if (mp->mnt_flag & (MNT_UPDATE | MNT_ROOTFS))
  return (EOPNOTSUPP);

 fmp = malloc(sizeof(struct fdescmount),
    M_FDESCMNT, M_WAITOK);





 mp->mnt_data = fmp;
 fmp->flags = 0;
 if (vfs_getopt(mp->mnt_optnew, "linrdlnk", ((void*)0), ((void*)0)) == 0)
  fmp->flags |= FMNT_LINRDLNKF;
 error = fdesc_allocvp(Froot, -1, FD_ROOT, mp, &rvp);
 if (error) {
  free(fmp, M_FDESCMNT);
  mp->mnt_data = ((void*)0);
  return (error);
 }
 rvp->v_type = VDIR;
 rvp->v_vflag |= VV_ROOT;
 fmp->f_root = rvp;
 VOP_UNLOCK(rvp, 0);


 vfs_getnewfsid(mp);

 vfs_mountedfrom(mp, "fdescfs");
 return (0);
}
