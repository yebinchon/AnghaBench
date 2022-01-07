
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_node {scalar_t__ unloaded_info; struct gcov_node* loaded_info; int dentry; } ;


 int LIST_REMOVE (struct gcov_node*,int ) ;
 int M_GCOV ;
 int all_entry ;
 int children_entry ;
 int debugfs_remove (int ) ;
 int free (struct gcov_node*,int ) ;
 int gcov_info_free (scalar_t__) ;
 int remove_links (struct gcov_node*) ;

__attribute__((used)) static void
release_node(struct gcov_node *node)
{
 LIST_REMOVE(node, children_entry);
 LIST_REMOVE(node, all_entry);
 debugfs_remove(node->dentry);
 remove_links(node);
 free(node->loaded_info, M_GCOV);
 if (node->unloaded_info)
  gcov_info_free(node->unloaded_info);
 free(node, M_GCOV);
}
