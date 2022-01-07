
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_node {int dummy; } ;
struct tmpfs_dirent {struct tmpfs_node* td_node; } ;
struct tmpfs_dir_cursor {int dummy; } ;


 int ENOENT ;
 struct tmpfs_dirent* tmpfs_dir_first (struct tmpfs_node*,struct tmpfs_dir_cursor*) ;
 struct tmpfs_dirent* tmpfs_dir_next (struct tmpfs_node*,struct tmpfs_dir_cursor*) ;

__attribute__((used)) static int
tmpfs_vptocnp_dir(struct tmpfs_node *tn, struct tmpfs_node *tnp,
    struct tmpfs_dirent **pde)
{
 struct tmpfs_dir_cursor dc;
 struct tmpfs_dirent *de;

 for (de = tmpfs_dir_first(tnp, &dc); de != ((void*)0);
      de = tmpfs_dir_next(tnp, &dc)) {
  if (de->td_node == tn) {
   *pde = de;
   return (0);
  }
 }
 return (ENOENT);
}
