
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct undelete_args {int path; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {int cn_flags; } ;
struct nameidata {scalar_t__ ni_vp; scalar_t__ ni_dvp; TYPE_1__ ni_cnd; } ;
struct mount {int dummy; } ;


 int AUDITVNODE1 ;
 int DELETE ;
 int DOWHITEOUT ;
 int EEXIST ;
 int ISWHITEOUT ;
 int LOCKPARENT ;
 int NDFREE (struct nameidata*,int ) ;
 int NDF_ONLY_PNBUF ;
 int NDINIT (struct nameidata*,int ,int,int ,int ,struct thread*) ;
 scalar_t__ NULLVP ;
 int PCATCH ;
 int UIO_USERSPACE ;
 int VOP_WHITEOUT (scalar_t__,TYPE_1__*,int ) ;
 int V_NOWAIT ;
 int V_XSLEEP ;
 int bwillwrite () ;
 int namei (struct nameidata*) ;
 int vn_finished_write (struct mount*) ;
 int vn_start_write (int *,struct mount**,int) ;
 int vput (scalar_t__) ;
 int vrele (scalar_t__) ;

int
sys_undelete(struct thread *td, struct undelete_args *uap)
{
 struct mount *mp;
 struct nameidata nd;
 int error;

restart:
 bwillwrite();
 NDINIT(&nd, DELETE, LOCKPARENT | DOWHITEOUT | AUDITVNODE1,
     UIO_USERSPACE, uap->path, td);
 error = namei(&nd);
 if (error != 0)
  return (error);

 if (nd.ni_vp != NULLVP || !(nd.ni_cnd.cn_flags & ISWHITEOUT)) {
  NDFREE(&nd, NDF_ONLY_PNBUF);
  if (nd.ni_vp == nd.ni_dvp)
   vrele(nd.ni_dvp);
  else
   vput(nd.ni_dvp);
  if (nd.ni_vp)
   vrele(nd.ni_vp);
  return (EEXIST);
 }
 if (vn_start_write(nd.ni_dvp, &mp, V_NOWAIT) != 0) {
  NDFREE(&nd, NDF_ONLY_PNBUF);
  vput(nd.ni_dvp);
  if ((error = vn_start_write(((void*)0), &mp, V_XSLEEP | PCATCH)) != 0)
   return (error);
  goto restart;
 }
 error = VOP_WHITEOUT(nd.ni_dvp, &nd.ni_cnd, DELETE);
 NDFREE(&nd, NDF_ONLY_PNBUF);
 vput(nd.ni_dvp);
 vn_finished_write(mp);
 return (error);
}
