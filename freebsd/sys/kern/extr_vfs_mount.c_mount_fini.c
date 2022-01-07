
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_mtx; int mnt_listmtx; int mnt_explock; int mnt_thread_in_ops_pcpu; int mnt_ref_pcpu; int mnt_lockref_pcpu; int mnt_writeopcount_pcpu; } ;


 int lockdestroy (int *) ;
 int mtx_destroy (int *) ;
 int pcpu_zone_int ;
 int uma_zfree_pcpu (int ,int ) ;

__attribute__((used)) static void
mount_fini(void *mem, int size)
{
 struct mount *mp;

 mp = (struct mount *)mem;
 uma_zfree_pcpu(pcpu_zone_int, mp->mnt_writeopcount_pcpu);
 uma_zfree_pcpu(pcpu_zone_int, mp->mnt_lockref_pcpu);
 uma_zfree_pcpu(pcpu_zone_int, mp->mnt_ref_pcpu);
 uma_zfree_pcpu(pcpu_zone_int, mp->mnt_thread_in_ops_pcpu);
 lockdestroy(&mp->mnt_explock);
 mtx_destroy(&mp->mnt_listmtx);
 mtx_destroy(&mp->mnt_mtx);
}
