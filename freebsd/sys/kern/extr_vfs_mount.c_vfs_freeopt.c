
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsoptlist {int dummy; } ;
struct vfsopt {struct vfsopt* value; struct vfsopt* name; } ;


 int M_MOUNT ;
 int TAILQ_REMOVE (struct vfsoptlist*,struct vfsopt*,int ) ;
 int free (struct vfsopt*,int ) ;
 int link ;

__attribute__((used)) static void
vfs_freeopt(struct vfsoptlist *opts, struct vfsopt *opt)
{

 TAILQ_REMOVE(opts, opt, link);
 free(opt->name, M_MOUNT);
 if (opt->value != ((void*)0))
  free(opt->value, M_MOUNT);
 free(opt, M_MOUNT);
}
