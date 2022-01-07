
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fs_base {int dummy; } ;


 int _fs_add_node (struct fs_base*,char const*,struct fs_base*) ;
 int fs_init_node (struct fs_base*,unsigned int) ;

__attribute__((used)) static void fs_add_node(struct fs_base *node,
   struct fs_base *parent, const char *name,
   unsigned int refcount)
{
 fs_init_node(node, refcount);
 _fs_add_node(node, name, parent);
}
