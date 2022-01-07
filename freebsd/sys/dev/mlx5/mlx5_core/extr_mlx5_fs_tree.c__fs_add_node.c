
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_base {struct fs_base* parent; int name; int users_refcount; } ;


 int GFP_KERNEL ;
 int atomic_inc (int *) ;
 int kstrdup_const (char const*,int ) ;

__attribute__((used)) static void _fs_add_node(struct fs_base *node,
    const char *name,
    struct fs_base *parent)
{
 if (parent)
  atomic_inc(&parent->users_refcount);
 node->name = kstrdup_const(name, GFP_KERNEL);
 node->parent = parent;
}
