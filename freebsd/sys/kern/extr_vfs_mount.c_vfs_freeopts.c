
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsoptlist {int dummy; } ;
struct vfsopt {int dummy; } ;


 int M_MOUNT ;
 int TAILQ_EMPTY (struct vfsoptlist*) ;
 struct vfsopt* TAILQ_FIRST (struct vfsoptlist*) ;
 int free (struct vfsoptlist*,int ) ;
 int vfs_freeopt (struct vfsoptlist*,struct vfsopt*) ;

void
vfs_freeopts(struct vfsoptlist *opts)
{
 struct vfsopt *opt;

 while (!TAILQ_EMPTY(opts)) {
  opt = TAILQ_FIRST(opts);
  vfs_freeopt(opts, opt);
 }
 free(opts, M_MOUNT);
}
