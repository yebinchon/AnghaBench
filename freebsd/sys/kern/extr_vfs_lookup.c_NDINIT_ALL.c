
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_long ;
struct vnode {int dummy; } ;
struct thread {int dummy; } ;
struct TYPE_2__ {struct thread* cn_thread; void* cn_flags; void* cn_nameiop; } ;
struct nameidata {int ni_segflg; char const* ni_dirp; int ni_dirfd; int ni_rightsneeded; TYPE_1__ ni_cnd; int ni_filecaps; scalar_t__ ni_resflags; struct vnode* ni_startdir; } ;
typedef enum uio_seg { ____Placeholder_uio_seg } uio_seg ;
typedef int cap_rights_t ;


 int cap_rights_init (int *) ;
 int filecaps_init (int *) ;

void
NDINIT_ALL(struct nameidata *ndp, u_long op, u_long flags, enum uio_seg segflg,
    const char *namep, int dirfd, struct vnode *startdir, cap_rights_t *rightsp,
    struct thread *td)
{

 ndp->ni_cnd.cn_nameiop = op;
 ndp->ni_cnd.cn_flags = flags;
 ndp->ni_segflg = segflg;
 ndp->ni_dirp = namep;
 ndp->ni_dirfd = dirfd;
 ndp->ni_startdir = startdir;
 ndp->ni_resflags = 0;
 filecaps_init(&ndp->ni_filecaps);
 ndp->ni_cnd.cn_thread = td;
 if (rightsp != ((void*)0))
  ndp->ni_rightsneeded = *rightsp;
 else
  cap_rights_init(&ndp->ni_rightsneeded);
}
