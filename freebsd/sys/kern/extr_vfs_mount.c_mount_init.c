
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_vfs_ops; int * mnt_rootvnode; scalar_t__ mnt_ref; void* mnt_writeopcount_pcpu; void* mnt_lockref_pcpu; void* mnt_ref_pcpu; void* mnt_thread_in_ops_pcpu; int mnt_explock; int mnt_listmtx; int mnt_mtx; } ;


 int MTX_DEF ;
 int M_WAITOK ;
 int M_ZERO ;
 int PVFS ;
 int lockinit (int *,int ,char*,int ,int ) ;
 int mtx_init (int *,char*,int *,int ) ;
 int pcpu_zone_int ;
 void* uma_zalloc_pcpu (int ,int) ;

__attribute__((used)) static int
mount_init(void *mem, int size, int flags)
{
 struct mount *mp;

 mp = (struct mount *)mem;
 mtx_init(&mp->mnt_mtx, "struct mount mtx", ((void*)0), MTX_DEF);
 mtx_init(&mp->mnt_listmtx, "struct mount vlist mtx", ((void*)0), MTX_DEF);
 lockinit(&mp->mnt_explock, PVFS, "explock", 0, 0);
 mp->mnt_thread_in_ops_pcpu = uma_zalloc_pcpu(pcpu_zone_int,
     M_WAITOK | M_ZERO);
 mp->mnt_ref_pcpu = uma_zalloc_pcpu(pcpu_zone_int,
     M_WAITOK | M_ZERO);
 mp->mnt_lockref_pcpu = uma_zalloc_pcpu(pcpu_zone_int,
     M_WAITOK | M_ZERO);
 mp->mnt_writeopcount_pcpu = uma_zalloc_pcpu(pcpu_zone_int,
     M_WAITOK | M_ZERO);
 mp->mnt_ref = 0;
 mp->mnt_vfs_ops = 1;
 mp->mnt_rootvnode = ((void*)0);
 return (0);
}
