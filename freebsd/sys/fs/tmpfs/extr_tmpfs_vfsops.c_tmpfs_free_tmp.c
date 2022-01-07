
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpfs_mount {scalar_t__ tm_refcount; scalar_t__ tm_pages_used; scalar_t__ tm_nodes_inuse; int tm_allnode_lock; int tm_node_pool; int tm_dirent_pool; } ;


 int MPASS (int) ;
 int M_TMPFSMNT ;
 int TMPFS_UNLOCK (struct tmpfs_mount*) ;
 int free (struct tmpfs_mount*,int ) ;
 int mtx_destroy (int *) ;
 int uma_zdestroy (int ) ;

void
tmpfs_free_tmp(struct tmpfs_mount *tmp)
{

 MPASS(tmp->tm_refcount > 0);
 tmp->tm_refcount--;
 if (tmp->tm_refcount > 0) {
  TMPFS_UNLOCK(tmp);
  return;
 }
 TMPFS_UNLOCK(tmp);

 uma_zdestroy(tmp->tm_dirent_pool);
 uma_zdestroy(tmp->tm_node_pool);

 mtx_destroy(&tmp->tm_allnode_lock);
 MPASS(tmp->tm_pages_used == 0);
 MPASS(tmp->tm_nodes_inuse == 0);

 free(tmp, M_TMPFSMNT);
}
