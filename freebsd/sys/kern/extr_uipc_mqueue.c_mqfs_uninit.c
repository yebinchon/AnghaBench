
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;
struct mqfs_info {int mi_lock; int * mi_root; } ;


 int EOPNOTSUPP ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int exit_tag ;
 struct mqfs_info mqfs_data ;
 int mqfs_destroy (int *) ;
 int mqfs_fileno_uninit (struct mqfs_info*) ;
 int mqfs_osd_jail_slot ;
 int mqnode_zone ;
 int mqnoti_zone ;
 int mqueue_zone ;
 int mvdata_zone ;
 int osd_jail_deregister (int ) ;
 int process_exit ;
 int sx_destroy (int *) ;
 int uma_zdestroy (int ) ;
 int unloadable ;

__attribute__((used)) static int
mqfs_uninit(struct vfsconf *vfc)
{
 struct mqfs_info *mi;

 if (!unloadable)
  return (EOPNOTSUPP);
 osd_jail_deregister(mqfs_osd_jail_slot);
 EVENTHANDLER_DEREGISTER(process_exit, exit_tag);
 mi = &mqfs_data;
 mqfs_destroy(mi->mi_root);
 mi->mi_root = ((void*)0);
 mqfs_fileno_uninit(mi);
 sx_destroy(&mi->mi_lock);
 uma_zdestroy(mqnode_zone);
 uma_zdestroy(mqueue_zone);
 uma_zdestroy(mvdata_zone);
 uma_zdestroy(mqnoti_zone);
 return (0);
}
