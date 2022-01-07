
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {int children; int dentry; int name; void* loaded_info; } ;
struct gcov_info {int dummy; } ;


 int LIST_INSERT_HEAD (int *,struct gcov_node*,int ) ;
 int LOG_WARNING ;
 int M_GCOV ;
 int M_NOWAIT ;
 int M_ZERO ;
 int add_links (struct gcov_node*,int ) ;
 int all_entry ;
 int all_head ;
 int children_entry ;
 int debugfs_create_dir (int ,int ) ;
 int debugfs_create_file (int ,int,int ,struct gcov_node*,int *) ;
 int deskew (int ) ;
 int free (struct gcov_node*,int ) ;
 int gcov_data_fops ;
 int init_node (struct gcov_node*,struct gcov_info*,char const*,struct gcov_node*) ;
 int log (int ,char*) ;
 void* malloc (int,int ,int) ;
 int strlen (char const*) ;

__attribute__((used)) static struct gcov_node *
new_node(struct gcov_node *parent, struct gcov_info *info, const char *name)
{
 struct gcov_node *node;

 node = malloc(sizeof(struct gcov_node) + strlen(name) + 1, M_GCOV, M_NOWAIT|M_ZERO);
 if (!node)
  goto err_nomem;
 if (info) {
  node->loaded_info = malloc(sizeof(struct gcov_info *), M_GCOV, M_NOWAIT|M_ZERO);
  if (!node->loaded_info)
   goto err_nomem;
 }
 init_node(node, info, name, parent);

 if (info) {
  node->dentry = debugfs_create_file(deskew(node->name), 0600,
     parent->dentry, node, &gcov_data_fops);
 } else
  node->dentry = debugfs_create_dir(node->name, parent->dentry);
 if (!node->dentry) {
  log(LOG_WARNING, "could not create file\n");
  free(node, M_GCOV);
  return ((void*)0);
 }
 if (info)
  add_links(node, parent->dentry);
 LIST_INSERT_HEAD(&parent->children, node, children_entry);
 LIST_INSERT_HEAD(&all_head, node, all_entry);

 return (node);

err_nomem:
 free(node, M_GCOV);
 log(LOG_WARNING, "out of memory\n");
 return ((void*)0);
}
