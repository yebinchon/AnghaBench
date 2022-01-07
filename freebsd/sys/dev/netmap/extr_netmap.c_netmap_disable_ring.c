
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netmap_kring {int q_lock; } ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int nm_kr_put (struct netmap_kring*) ;
 int nm_kr_stop (struct netmap_kring*,int) ;

__attribute__((used)) static void
netmap_disable_ring(struct netmap_kring *kr, int stopped)
{
 nm_kr_stop(kr, stopped);

 mtx_lock(&kr->q_lock);
 mtx_unlock(&kr->q_lock);
 nm_kr_put(kr);
}
