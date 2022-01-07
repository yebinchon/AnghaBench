
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_base {int dummy; } ;


 int __fs_remove_node ;
 int _fs_put (struct fs_base*,int ,int) ;

__attribute__((used)) static void fs_put_parent_locked(struct fs_base *node)
{
 _fs_put(node, __fs_remove_node, 1);
}
