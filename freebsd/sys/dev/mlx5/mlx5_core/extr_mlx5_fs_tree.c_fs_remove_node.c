
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_base {int name; int complete; } ;


 int fs_put (struct fs_base*) ;
 int kfree (struct fs_base*) ;
 int kfree_const (int ) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void fs_remove_node(struct fs_base *node)
{
 fs_put(node);
 wait_for_completion(&node->complete);
 kfree_const(node->name);
 kfree(node);
}
