
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct gcov_node {char* links; } ;
struct dentry {int dummy; } ;
struct TYPE_3__ {scalar_t__ ext; } ;


 int M_GCOV ;
 int M_NOWAIT ;
 int M_ZERO ;
 char* basename (char*) ;
 char debugfs_create_symlink (int ,struct dentry*,char*) ;
 int debugfs_remove (char) ;
 int deskew (char const*) ;
 int free (char*,int ) ;
 int gcov_info_filename (int ) ;
 TYPE_1__* gcov_link ;
 char* get_link_target (int ,TYPE_1__*) ;
 int get_node_info (struct gcov_node*) ;
 char* malloc (int,int ,int) ;

__attribute__((used)) static void
add_links(struct gcov_node *node, struct dentry *parent)
{
 const char *path_basename;
 char *target;
 int num;
 int i;

 for (num = 0; gcov_link[num].ext; num++)
                ;
 node->links = malloc((num*sizeof(struct dentry *)), M_GCOV, M_NOWAIT|M_ZERO);
 if (node->links == ((void*)0))
  return;
 for (i = 0; i < num; i++) {
  target = get_link_target(
    gcov_info_filename(get_node_info(node)),
    &gcov_link[i]);
  if (target == ((void*)0))
   goto out_err;
  path_basename = basename(target);
  if (path_basename == target)
   goto out_err;
  node->links[i] = debugfs_create_symlink(deskew(path_basename),
       parent, target);
  if (!node->links[i])
   goto out_err;
  free(target, M_GCOV);
 }

 return;
out_err:
 free(target, M_GCOV);
 while (i-- > 0)
  debugfs_remove(node->links[i]);
 free(node->links, M_GCOV);
 node->links = ((void*)0);
}
