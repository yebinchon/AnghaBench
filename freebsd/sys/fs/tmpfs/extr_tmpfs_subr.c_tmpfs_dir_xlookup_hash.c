
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int tn_dirhead; } ;
struct tmpfs_node {TYPE_1__ tn_dir; } ;
struct tmpfs_dirent {int td_hash; } ;


 struct tmpfs_dirent* RB_FIND (int ,int *,struct tmpfs_dirent*) ;
 int tmpfs_dir ;

__attribute__((used)) static struct tmpfs_dirent *
tmpfs_dir_xlookup_hash(struct tmpfs_node *dnode, uint32_t hash)
{
 struct tmpfs_dirent *de, dekey;

 dekey.td_hash = hash;
 de = RB_FIND(tmpfs_dir, &dnode->tn_dir.tn_dirhead, &dekey);
 return (de);
}
