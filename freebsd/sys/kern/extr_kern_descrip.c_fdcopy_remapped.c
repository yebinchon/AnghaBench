
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct filedescent {int fde_caps; TYPE_2__* fde_file; } ;
struct filedesc {int fd_lastfile; size_t fd_freefile; int fd_cmask; struct filedescent* fd_ofiles; } ;
struct TYPE_4__ {TYPE_1__* f_ops; } ;
struct TYPE_3__ {int fo_flags; } ;


 int DFLAG_PASSABLE ;
 int E2BIG ;
 int EBADF ;
 int EINVAL ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 int MPASS (int ) ;
 int fdescfree_remapped (struct filedesc*) ;
 struct filedesc* fdinit (struct filedesc*,int) ;
 int fdused_init (struct filedesc*,int) ;
 int fhold (TYPE_2__*) ;
 int filecaps_copy (int *,int *,int) ;

int
fdcopy_remapped(struct filedesc *fdp, const int *fds, size_t nfds,
    struct filedesc **ret)
{
 struct filedesc *newfdp;
 struct filedescent *nfde, *ofde;
 int error, i;

 MPASS(fdp != ((void*)0));

 newfdp = fdinit(fdp, 1);
 if (nfds > fdp->fd_lastfile + 1) {

  error = E2BIG;
  goto bad;
 }

 newfdp->fd_freefile = nfds;
 for (i = 0; i < nfds; ++i) {
  if (fds[i] < 0 || fds[i] > fdp->fd_lastfile) {

   error = EBADF;
   goto bad;
  }
  ofde = &fdp->fd_ofiles[fds[i]];
  if (ofde->fde_file == ((void*)0)) {

   error = EBADF;
   goto bad;
  }
  if ((ofde->fde_file->f_ops->fo_flags & DFLAG_PASSABLE) == 0) {

   error = EINVAL;
   goto bad;
  }
  if (!fhold(nfde->fde_file)) {
   error = EBADF;
   goto bad;
  }
  nfde = &newfdp->fd_ofiles[i];
  *nfde = *ofde;
  filecaps_copy(&ofde->fde_caps, &nfde->fde_caps, 1);
  fdused_init(newfdp, i);
  newfdp->fd_lastfile = i;
 }
 newfdp->fd_cmask = fdp->fd_cmask;
 FILEDESC_SUNLOCK(fdp);
 *ret = newfdp;
 return (0);
bad:
 FILEDESC_SUNLOCK(fdp);
 fdescfree_remapped(newfdp);
 return (error);
}
