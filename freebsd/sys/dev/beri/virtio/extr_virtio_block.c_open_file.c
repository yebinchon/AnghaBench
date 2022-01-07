
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct vattr {int dummy; } ;
struct thread {int td_ucred; } ;
struct nameidata {TYPE_2__* ni_vp; } ;
struct beri_vtblk_softc {int cred; TYPE_2__* vnode; TYPE_1__* mdio; } ;
struct TYPE_7__ {scalar_t__ v_type; int v_iflag; int v_vflag; } ;
struct TYPE_6__ {int md_file; } ;


 int EINVAL ;
 int FOLLOW ;
 int FREAD ;
 int FWRITE ;
 scalar_t__ LK_EXCLUSIVE ;
 int LK_RETRY ;
 int LK_UPGRADE ;
 int LOOKUP ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int ,int ,int ,struct thread*) ;
 int UIO_SYSSPACE ;
 int VI_DOOMED ;
 int VOP_GETATTR (TYPE_2__*,struct vattr*,int ) ;
 scalar_t__ VOP_ISLOCKED (TYPE_2__*) ;
 int VOP_UNLOCK (TYPE_2__*,int ) ;
 scalar_t__ VREG ;
 int VV_MD ;
 int crhold (int ) ;
 int vn_lock (TYPE_2__*,int) ;
 int vn_open (struct nameidata*,int*,int ,int *) ;

__attribute__((used)) static int
open_file(struct beri_vtblk_softc *sc, struct thread *td)
{
 struct nameidata nd;
 struct vattr vattr;
 int error;
 int flags;

 flags = (FREAD | FWRITE);
 NDINIT(&nd, LOOKUP, FOLLOW, UIO_SYSSPACE,
  sc->mdio->md_file, td);
 error = vn_open(&nd, &flags, 0, ((void*)0));
 if (error != 0)
  return (error);
 NDFREE(&nd, NDF_ONLY_PNBUF);

 if (nd.ni_vp->v_type != VREG) {
  return (EINVAL);
 }

 error = VOP_GETATTR(nd.ni_vp, &vattr, td->td_ucred);
 if (error != 0)
  return (error);

 if (VOP_ISLOCKED(nd.ni_vp) != LK_EXCLUSIVE) {
  vn_lock(nd.ni_vp, LK_UPGRADE | LK_RETRY);
  if (nd.ni_vp->v_iflag & VI_DOOMED) {
   return (1);
  }
 }
 nd.ni_vp->v_vflag |= VV_MD;
 VOP_UNLOCK(nd.ni_vp, 0);

 sc->vnode = nd.ni_vp;
 sc->cred = crhold(td->td_ucred);

 return (0);
}
