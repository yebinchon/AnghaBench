
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vnode {int dummy; } ;
struct sbuf {int dummy; } ;
struct proc {TYPE_2__* p_pgrp; struct vnode* p_textvp; struct vnode* p_tracevp; } ;
struct filedesc {scalar_t__ fd_refcnt; int fd_lastfile; TYPE_3__* fd_ofiles; struct vnode* fd_jdir; struct vnode* fd_rdir; struct vnode* fd_cdir; } ;
struct file {int dummy; } ;
struct export_fd_buf {scalar_t__ remainder; int flags; struct filedesc* fdp; struct sbuf* sb; } ;
typedef scalar_t__ ssize_t ;
typedef int cap_rights_t ;
struct TYPE_6__ {struct file* fde_file; } ;
struct TYPE_5__ {TYPE_1__* pg_session; } ;
struct TYPE_4__ {struct vnode* s_ttyvp; } ;


 int FILEDESC_SLOCK (struct filedesc*) ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 int FREAD ;
 int FWRITE ;
 int KF_FD_TYPE_CTTY ;
 int KF_FD_TYPE_CWD ;
 int KF_FD_TYPE_JAIL ;
 int KF_FD_TYPE_ROOT ;
 int KF_FD_TYPE_TEXT ;
 int KF_FD_TYPE_TRACE ;
 int MA_OWNED ;
 int M_TEMP ;
 int M_WAITOK ;
 int PROC_LOCK_ASSERT (struct proc*,int ) ;
 int PROC_UNLOCK (struct proc*) ;
 int cap_no_rights ;
 int * cap_rights (struct filedesc*,int) ;
 int export_file_to_sb (struct file*,int,int *,struct export_fd_buf*) ;
 int export_vnode_to_sb (struct vnode*,int ,int,struct export_fd_buf*) ;
 int fddrop (struct filedesc*) ;
 struct filedesc* fdhold (struct proc*) ;
 int free (struct export_fd_buf*,int ) ;
 struct export_fd_buf* malloc (int,int ,int ) ;
 int vrefact (struct vnode*) ;

int
kern_proc_filedesc_out(struct proc *p, struct sbuf *sb, ssize_t maxlen,
    int flags)
{
 struct file *fp;
 struct filedesc *fdp;
 struct export_fd_buf *efbuf;
 struct vnode *cttyvp, *textvp, *tracevp;
 int error, i;
 cap_rights_t rights;

 PROC_LOCK_ASSERT(p, MA_OWNED);


 tracevp = p->p_tracevp;
 if (tracevp != ((void*)0))
  vrefact(tracevp);

 textvp = p->p_textvp;
 if (textvp != ((void*)0))
  vrefact(textvp);

 cttyvp = ((void*)0);
 if (p->p_pgrp != ((void*)0) && p->p_pgrp->pg_session != ((void*)0)) {
  cttyvp = p->p_pgrp->pg_session->s_ttyvp;
  if (cttyvp != ((void*)0))
   vrefact(cttyvp);
 }
 fdp = fdhold(p);
 PROC_UNLOCK(p);
 efbuf = malloc(sizeof(*efbuf), M_TEMP, M_WAITOK);
 efbuf->fdp = ((void*)0);
 efbuf->sb = sb;
 efbuf->remainder = maxlen;
 efbuf->flags = flags;
 if (tracevp != ((void*)0))
  export_vnode_to_sb(tracevp, KF_FD_TYPE_TRACE, FREAD | FWRITE,
      efbuf);
 if (textvp != ((void*)0))
  export_vnode_to_sb(textvp, KF_FD_TYPE_TEXT, FREAD, efbuf);
 if (cttyvp != ((void*)0))
  export_vnode_to_sb(cttyvp, KF_FD_TYPE_CTTY, FREAD | FWRITE,
      efbuf);
 error = 0;
 if (fdp == ((void*)0))
  goto fail;
 efbuf->fdp = fdp;
 FILEDESC_SLOCK(fdp);

 if (fdp->fd_cdir != ((void*)0)) {
  vrefact(fdp->fd_cdir);
  export_vnode_to_sb(fdp->fd_cdir, KF_FD_TYPE_CWD, FREAD, efbuf);
 }

 if (fdp->fd_rdir != ((void*)0)) {
  vrefact(fdp->fd_rdir);
  export_vnode_to_sb(fdp->fd_rdir, KF_FD_TYPE_ROOT, FREAD, efbuf);
 }

 if (fdp->fd_jdir != ((void*)0)) {
  vrefact(fdp->fd_jdir);
  export_vnode_to_sb(fdp->fd_jdir, KF_FD_TYPE_JAIL, FREAD, efbuf);
 }
 for (i = 0; fdp->fd_refcnt > 0 && i <= fdp->fd_lastfile; i++) {
  if ((fp = fdp->fd_ofiles[i].fde_file) == ((void*)0))
   continue;



  rights = cap_no_rights;







  error = export_file_to_sb(fp, i, &rights, efbuf);
  if (error != 0 || efbuf->remainder == 0)
   break;
 }
 FILEDESC_SUNLOCK(fdp);
 fddrop(fdp);
fail:
 free(efbuf, M_TEMP);
 return (error);
}
