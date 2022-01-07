
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filedesc {int fd_lastfile; scalar_t__ fd_nfiles; scalar_t__ fd_jdir; scalar_t__ fd_rdir; scalar_t__ fd_cdir; struct fdescenttbl* fd_files; int fd_map; int fd_cmask; int fd_holdcnt; int fd_refcnt; } ;
struct filedesc0 {int fd_dfiles; int fd_dmap; struct filedesc fd_fd; } ;
struct fdescenttbl {int fdt_nfiles; } ;


 int CMASK ;
 int FILEDESC_LOCK_INIT (struct filedesc*) ;
 int FILEDESC_SLOCK (struct filedesc*) ;
 int FILEDESC_SUNLOCK (struct filedesc*) ;
 int M_WAITOK ;
 int M_ZERO ;
 int NDFILE ;
 int fdgrowtable (struct filedesc*,scalar_t__) ;
 int filedesc0_zone ;
 int refcount_init (int *,int) ;
 struct filedesc0* uma_zalloc (int ,int) ;
 int vrefact (scalar_t__) ;

struct filedesc *
fdinit(struct filedesc *fdp, bool prepfiles)
{
 struct filedesc0 *newfdp0;
 struct filedesc *newfdp;

 newfdp0 = uma_zalloc(filedesc0_zone, M_WAITOK | M_ZERO);
 newfdp = &newfdp0->fd_fd;


 FILEDESC_LOCK_INIT(newfdp);
 refcount_init(&newfdp->fd_refcnt, 1);
 refcount_init(&newfdp->fd_holdcnt, 1);
 newfdp->fd_cmask = CMASK;
 newfdp->fd_map = newfdp0->fd_dmap;
 newfdp->fd_lastfile = -1;
 newfdp->fd_files = (struct fdescenttbl *)&newfdp0->fd_dfiles;
 newfdp->fd_files->fdt_nfiles = NDFILE;

 if (fdp == ((void*)0))
  return (newfdp);

 if (prepfiles && fdp->fd_lastfile >= newfdp->fd_nfiles)
  fdgrowtable(newfdp, fdp->fd_lastfile + 1);

 FILEDESC_SLOCK(fdp);
 newfdp->fd_cdir = fdp->fd_cdir;
 if (newfdp->fd_cdir)
  vrefact(newfdp->fd_cdir);
 newfdp->fd_rdir = fdp->fd_rdir;
 if (newfdp->fd_rdir)
  vrefact(newfdp->fd_rdir);
 newfdp->fd_jdir = fdp->fd_jdir;
 if (newfdp->fd_jdir)
  vrefact(newfdp->fd_jdir);

 if (!prepfiles) {
  FILEDESC_SUNLOCK(fdp);
 } else {
  while (fdp->fd_lastfile >= newfdp->fd_nfiles) {
   FILEDESC_SUNLOCK(fdp);
   fdgrowtable(newfdp, fdp->fd_lastfile + 1);
   FILEDESC_SLOCK(fdp);
  }
 }

 return (newfdp);
}
