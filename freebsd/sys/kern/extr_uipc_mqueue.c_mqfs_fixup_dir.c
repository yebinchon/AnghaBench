
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqfs_node {char* mn_name; int mn_refcount; int mn_type; } ;


 scalar_t__ mqfs_add_node (struct mqfs_node*,struct mqfs_node*) ;
 int mqfstype_parent ;
 int mqfstype_this ;
 struct mqfs_node* mqnode_alloc () ;
 int mqnode_free (struct mqfs_node*) ;

__attribute__((used)) static int
mqfs_fixup_dir(struct mqfs_node *parent)
{
 struct mqfs_node *dir;

 dir = mqnode_alloc();
 dir->mn_name[0] = '.';
 dir->mn_type = mqfstype_this;
 dir->mn_refcount = 1;
 if (mqfs_add_node(parent, dir) != 0) {
  mqnode_free(dir);
  return (-1);
 }

 dir = mqnode_alloc();
 dir->mn_name[0] = dir->mn_name[1] = '.';
 dir->mn_type = mqfstype_parent;
 dir->mn_refcount = 1;

 if (mqfs_add_node(parent, dir) != 0) {
  mqnode_free(dir);
  return (-1);
 }

 return (0);
}
