
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KASSERT (int,char*) ;
 int MTX_DEF ;
 int M_SHMFD ;
 scalar_t__ devfs_alloc_cdp_inode () ;
 int hashinit (int,int ,int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int new_unrhdr64 (int *,int) ;
 scalar_t__ shm_dev_ino ;
 int shm_dict_lock ;
 int shm_dictionary ;
 int shm_hash ;
 int shm_ino_unr ;
 int shm_timestamp_lock ;
 int sx_init (int *,char*) ;

__attribute__((used)) static void
shm_init(void *arg)
{

 mtx_init(&shm_timestamp_lock, "shm timestamps", ((void*)0), MTX_DEF);
 sx_init(&shm_dict_lock, "shm dictionary");
 shm_dictionary = hashinit(1024, M_SHMFD, &shm_hash);
 new_unrhdr64(&shm_ino_unr, 1);
 shm_dev_ino = devfs_alloc_cdp_inode();
 KASSERT(shm_dev_ino > 0, ("shm dev inode not initialized"));
}
