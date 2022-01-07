
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tmpfs_node {scalar_t__ tn_links; } ;
struct tmpfs_mount {int tm_dirent_pool; } ;
struct TYPE_2__ {int * td_name; } ;
struct tmpfs_dirent {TYPE_1__ ud; struct tmpfs_node* td_node; } ;


 int MPASS (int) ;
 int M_TMPFSNAME ;
 int free (int *,int ) ;
 int tmpfs_dirent_duphead (struct tmpfs_dirent*) ;
 int uma_zfree (int ,struct tmpfs_dirent*) ;

void
tmpfs_free_dirent(struct tmpfs_mount *tmp, struct tmpfs_dirent *de)
{
 struct tmpfs_node *node;

 node = de->td_node;
 if (node != ((void*)0)) {
  MPASS(node->tn_links > 0);
  node->tn_links--;
 }
 if (!tmpfs_dirent_duphead(de) && de->ud.td_name != ((void*)0))
  free(de->ud.td_name, M_TMPFSNAME);
 uma_zfree(tmp->tm_dirent_pool, de);
}
