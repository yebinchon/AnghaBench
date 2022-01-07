
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * bo_object; } ;
struct vnode {TYPE_1__ v_bufobj; int v_mount; } ;
struct thread {int dummy; } ;
struct nfsnode {scalar_t__ n_directio_asyncwr; int n_flag; scalar_t__ n_attrstamp; } ;
struct nfsmount {int nm_flag; int nm_mountp; } ;


 int ASSERT_VOP_LOCKED (struct vnode*,char*) ;
 scalar_t__ NFSCL_FORCEDISM (int ) ;
 scalar_t__ NFSHASPNFS (struct nfsmount*) ;
 int NFSLOCKNODE (struct nfsnode*) ;
 int NFSMNT_INT ;
 int NFSUNLOCKNODE (struct nfsnode*) ;
 int NMODIFIED ;
 int OBJPC_SYNC ;
 int PCATCH ;
 struct nfsmount* VFSTONFS (int ) ;
 int VM_OBJECT_WLOCK (int *) ;
 int VM_OBJECT_WUNLOCK (int *) ;
 struct nfsnode* VTONFS (struct vnode*) ;
 int V_ALLOWCLEAN ;
 int V_SAVE ;
 int V_VMIO ;
 int hz ;
 int ncl_excl_finish (struct vnode*,int) ;
 int ncl_excl_start (struct vnode*) ;
 int newnfs_sigintr (struct nfsmount*,struct thread*) ;
 int nfscl_layoutcommit (struct vnode*,struct thread*) ;
 int vinvalbuf (struct vnode*,int,int,int) ;
 int vm_object_page_clean (int *,int ,int ,int ) ;

int
ncl_vinvalbuf(struct vnode *vp, int flags, struct thread *td, int intrflg)
{
 struct nfsnode *np = VTONFS(vp);
 struct nfsmount *nmp = VFSTONFS(vp->v_mount);
 int error = 0, slpflag, slptimeo;
 bool old_lock;

 ASSERT_VOP_LOCKED(vp, "ncl_vinvalbuf");

 if ((nmp->nm_flag & NFSMNT_INT) == 0)
  intrflg = 0;
 if (NFSCL_FORCEDISM(nmp->nm_mountp))
  intrflg = 1;
 if (intrflg) {
  slpflag = PCATCH;
  slptimeo = 2 * hz;
 } else {
  slpflag = 0;
  slptimeo = 0;
 }

 old_lock = ncl_excl_start(vp);
 if (old_lock)
  flags |= V_ALLOWCLEAN;




 if ((flags & (V_SAVE | V_VMIO)) == V_SAVE &&
      vp->v_bufobj.bo_object != ((void*)0)) {
  VM_OBJECT_WLOCK(vp->v_bufobj.bo_object);
  vm_object_page_clean(vp->v_bufobj.bo_object, 0, 0, OBJPC_SYNC);
  VM_OBJECT_WUNLOCK(vp->v_bufobj.bo_object);





  if (intrflg && (error = newnfs_sigintr(nmp, td)))
   goto out;
 }

 error = vinvalbuf(vp, flags, slpflag, 0);
 while (error) {
  if (intrflg && (error = newnfs_sigintr(nmp, td)))
   goto out;
  error = vinvalbuf(vp, flags, 0, slptimeo);
 }
 if (NFSHASPNFS(nmp)) {
  nfscl_layoutcommit(vp, td);




  NFSLOCKNODE(np);
  np->n_attrstamp = 0;
 } else
  NFSLOCKNODE(np);
 if (np->n_directio_asyncwr == 0)
  np->n_flag &= ~NMODIFIED;
 NFSUNLOCKNODE(np);
out:
 ncl_excl_finish(vp, old_lock);
 return error;
}
