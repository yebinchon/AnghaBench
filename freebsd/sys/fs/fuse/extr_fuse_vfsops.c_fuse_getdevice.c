
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnode {scalar_t__ v_type; struct cdev* v_rdev; } ;
struct thread {int td_ucred; } ;
struct nameidata {struct vnode* ni_vp; } ;
struct cdev {TYPE_1__* si_devsw; } ;
struct TYPE_2__ {int d_name; } ;


 int ENXIO ;
 int FOLLOW ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int ,int ,char const*,struct thread*) ;
 int UIO_SYSSPACE ;
 scalar_t__ VCHR ;
 int VOP_ACCESS (struct vnode*,int,int ,struct thread*) ;
 int VREAD ;
 int VWRITE ;
 int dev_ref (struct cdev*) ;
 int dev_rel (struct cdev*) ;
 scalar_t__ fuse_enforce_dev_perms ;
 int mac_check_vnode_open (int ,struct vnode*,int) ;
 int namei (struct nameidata*) ;
 scalar_t__ strcmp (char*,int ) ;
 int vrele (struct vnode*) ;

__attribute__((used)) static int
fuse_getdevice(const char *fspec, struct thread *td, struct cdev **fdevp)
{
 struct nameidata nd, *ndp = &nd;
 struct vnode *devvp;
 struct cdev *fdev;
 int err;






 NDINIT(ndp, LOOKUP, FOLLOW, UIO_SYSSPACE, fspec, td);
 if ((err = namei(ndp)) != 0)
  return err;
 NDFREE(ndp, NDF_ONLY_PNBUF);
 devvp = ndp->ni_vp;

 if (devvp->v_type != VCHR) {
  vrele(devvp);
  return ENXIO;
 }
 fdev = devvp->v_rdev;
 dev_ref(fdev);

 if (fuse_enforce_dev_perms) {
   err = VOP_ACCESS(devvp, VREAD | VWRITE, td->td_ucred, td);
  if (err) {
   vrele(devvp);
   dev_rel(fdev);
   return err;
  }
 }




 vrele(devvp);

 if (!fdev->si_devsw ||
     strcmp("fuse", fdev->si_devsw->d_name)) {
  dev_rel(fdev);
  return ENXIO;
 }
 *fdevp = fdev;

 return 0;
}
