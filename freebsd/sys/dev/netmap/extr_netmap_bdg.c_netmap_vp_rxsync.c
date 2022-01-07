
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_kring {int q_lock; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int netmap_vp_rxsync_locked (struct netmap_kring*,int) ;

int
netmap_vp_rxsync(struct netmap_kring *kring, int flags)
{
 int n;

 mtx_lock(&kring->q_lock);
 n = netmap_vp_rxsync_locked(kring, flags);
 mtx_unlock(&kring->q_lock);
 return n;
}
