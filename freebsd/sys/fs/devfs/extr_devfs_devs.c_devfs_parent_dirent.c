
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct devfs_dirent {int de_flags; struct devfs_dirent* de_dir; int de_dlist; TYPE_1__* de_dirent; } ;
struct TYPE_2__ {scalar_t__ d_type; } ;


 int DE_DOT ;
 int DE_DOTDOT ;
 scalar_t__ DT_DIR ;
 struct devfs_dirent* TAILQ_FIRST (int *) ;
 struct devfs_dirent* TAILQ_NEXT (struct devfs_dirent*,int ) ;
 int de_list ;

struct devfs_dirent *
devfs_parent_dirent(struct devfs_dirent *de)
{

 if (de->de_dirent->d_type != DT_DIR)
  return (de->de_dir);

 if (de->de_flags & (DE_DOT | DE_DOTDOT))
  return (((void*)0));

 de = TAILQ_FIRST(&de->de_dlist);
 if (de == ((void*)0))
  return (((void*)0));
 de = TAILQ_NEXT(de, de_list);
 if (de == ((void*)0))
  return (((void*)0));

 return (de->de_dir);
}
