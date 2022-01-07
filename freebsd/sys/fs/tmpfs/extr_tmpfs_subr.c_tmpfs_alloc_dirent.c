
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct tmpfs_node {int tn_links; } ;
struct tmpfs_mount {int tm_dirent_pool; } ;
struct TYPE_2__ {int td_name; } ;
struct tmpfs_dirent {scalar_t__ td_namelen; TYPE_1__ ud; struct tmpfs_node* td_node; } ;


 int M_TMPFSNAME ;
 int M_WAITOK ;
 int malloc (int ,int ,int ) ;
 int tmpfs_dirent_init (struct tmpfs_dirent*,char const*,int ) ;
 struct tmpfs_dirent* uma_zalloc (int ,int ) ;

int
tmpfs_alloc_dirent(struct tmpfs_mount *tmp, struct tmpfs_node *node,
    const char *name, u_int len, struct tmpfs_dirent **de)
{
 struct tmpfs_dirent *nde;

 nde = uma_zalloc(tmp->tm_dirent_pool, M_WAITOK);
 nde->td_node = node;
 if (name != ((void*)0)) {
  nde->ud.td_name = malloc(len, M_TMPFSNAME, M_WAITOK);
  tmpfs_dirent_init(nde, name, len);
 } else
  nde->td_namelen = 0;
 if (node != ((void*)0))
  node->tn_links++;

 *de = nde;

 return 0;
}
