
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dentry; } ;


 int debugfs_create_dir (char*,int *) ;
 int init_node (TYPE_1__*,int *,int *,int *) ;
 TYPE_1__ root_node ;

void
gcov_fs_init(void)
{
 init_node(&root_node, ((void*)0), ((void*)0), ((void*)0));
 root_node.dentry = debugfs_create_dir("gcov", ((void*)0));
}
