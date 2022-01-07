
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tn_dirhead; } ;
struct tmpfs_node {TYPE_1__ tn_dir; } ;
struct TYPE_4__ {int td_duphead; } ;
struct tmpfs_dirent {TYPE_2__ ud; } ;
struct tmpfs_dir_cursor {struct tmpfs_dirent* tdc_current; struct tmpfs_dirent* tdc_tree; } ;


 struct tmpfs_dirent* LIST_FIRST (int *) ;
 struct tmpfs_dirent* RB_MIN (int ,int *) ;
 int tmpfs_dir ;
 scalar_t__ tmpfs_dirent_duphead (struct tmpfs_dirent*) ;

struct tmpfs_dirent *
tmpfs_dir_first(struct tmpfs_node *dnode, struct tmpfs_dir_cursor *dc)
{
 struct tmpfs_dirent *de;

 de = RB_MIN(tmpfs_dir, &dnode->tn_dir.tn_dirhead);
 dc->tdc_tree = de;
 if (de != ((void*)0) && tmpfs_dirent_duphead(de))
  de = LIST_FIRST(&de->ud.td_duphead);
 dc->tdc_current = de;

 return (dc->tdc_current);
}
