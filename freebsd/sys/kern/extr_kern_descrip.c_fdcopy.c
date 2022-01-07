
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct filedescent {int fde_caps; TYPE_2__* fde_file; } ;
struct filedesc {int fd_freefile; int fd_lastfile; int fd_cmask; struct filedescent* fd_ofiles; } ;
struct TYPE_4__ {TYPE_1__* f_ops; } ;
struct TYPE_3__ {int fo_flags; } ;


 int DFLAG_PASSABLE ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 int MPASS (int ) ;
 struct filedesc* fdinit (struct filedesc*,int) ;
 int fdused_init (struct filedesc*,int) ;
 int fhold (TYPE_2__*) ;
 int filecaps_copy (int *,int *,int) ;

struct filedesc *
fdcopy(struct filedesc *fdp)
{
 struct filedesc *newfdp;
 struct filedescent *nfde, *ofde;
 int i;

 MPASS(fdp != ((void*)0));

 newfdp = fdinit(fdp, 1);

 newfdp->fd_freefile = -1;
 for (i = 0; i <= fdp->fd_lastfile; ++i) {
  ofde = &fdp->fd_ofiles[i];
  if (ofde->fde_file == ((void*)0) ||
      (ofde->fde_file->f_ops->fo_flags & DFLAG_PASSABLE) == 0 ||
      !fhold(ofde->fde_file)) {
   if (newfdp->fd_freefile == -1)
    newfdp->fd_freefile = i;
   continue;
  }
  nfde = &newfdp->fd_ofiles[i];
  *nfde = *ofde;
  filecaps_copy(&ofde->fde_caps, &nfde->fde_caps, 1);
  fdused_init(newfdp, i);
  newfdp->fd_lastfile = i;
 }
 if (newfdp->fd_freefile == -1)
  newfdp->fd_freefile = i;
 newfdp->fd_cmask = fdp->fd_cmask;
 FILEDESC_SUNLOCK(fdp);
 return (newfdp);
}
