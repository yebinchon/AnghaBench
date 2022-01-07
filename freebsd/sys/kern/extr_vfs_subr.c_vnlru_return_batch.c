
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_listmtx; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vnlru_return_batch_locked (struct mount*) ;

__attribute__((used)) static void
vnlru_return_batch(struct mount *mp)
{

 mtx_lock(&mp->mnt_listmtx);
 vnlru_return_batch_locked(mp);
 mtx_unlock(&mp->mnt_listmtx);
}
