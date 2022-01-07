
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct mqfs_node {int dummy; } ;


 scalar_t__ mqfs_add_node (struct mqfs_node*,struct mqfs_node*) ;
 struct mqfs_node* mqfs_create_node (char const*,int,struct ucred*,int,int ) ;
 int mqfstype_file ;
 int mqnode_free (struct mqfs_node*) ;

__attribute__((used)) static struct mqfs_node *
mqfs_create_file(struct mqfs_node *parent, const char *name, int namelen,
 struct ucred *cred, int mode)
{
 struct mqfs_node *node;

 node = mqfs_create_node(name, namelen, cred, mode, mqfstype_file);
 if (mqfs_add_node(parent, node) != 0) {
  mqnode_free(node);
  return (((void*)0));
 }
 return (node);
}
