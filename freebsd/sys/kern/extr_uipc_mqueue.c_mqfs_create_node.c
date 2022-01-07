
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {int cr_gid; int cr_uid; TYPE_1__* cr_prison; } ;
struct mqfs_node {int mn_type; int mn_refcount; int mn_mode; int mn_gid; int mn_uid; int mn_birth; int mn_mtime; int mn_atime; int mn_ctime; int mn_pr_root; int mn_name; } ;
struct TYPE_2__ {int pr_root; } ;


 struct mqfs_node* mqnode_alloc () ;
 int strncpy (int ,char const*,int) ;
 int vfs_timestamp (int *) ;

__attribute__((used)) static struct mqfs_node *
mqfs_create_node(const char *name, int namelen, struct ucred *cred, int mode,
 int nodetype)
{
 struct mqfs_node *node;

 node = mqnode_alloc();
 strncpy(node->mn_name, name, namelen);
 node->mn_pr_root = cred->cr_prison->pr_root;
 node->mn_type = nodetype;
 node->mn_refcount = 1;
 vfs_timestamp(&node->mn_birth);
 node->mn_ctime = node->mn_atime = node->mn_mtime
  = node->mn_birth;
 node->mn_uid = cred->cr_uid;
 node->mn_gid = cred->cr_gid;
 node->mn_mode = mode;
 return (node);
}
