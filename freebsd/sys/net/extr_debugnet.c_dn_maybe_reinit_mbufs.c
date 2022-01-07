
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nmbuf; int ncl; int clsize; } ;


 int debugnet_mbuf_reinit (int,int,int) ;
 TYPE_1__ dn_hwm ;
 int dn_hwm_lk ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
dn_maybe_reinit_mbufs(int nmbuf, int ncl, int clsize)
{
 bool any;

 any = 0;
 mtx_lock(&dn_hwm_lk);

 if (nmbuf > dn_hwm.nmbuf) {
  any = 1;
  dn_hwm.nmbuf = nmbuf;
 } else
  nmbuf = dn_hwm.nmbuf;

 if (ncl > dn_hwm.ncl) {
  any = 1;
  dn_hwm.ncl = ncl;
 } else
  ncl = dn_hwm.ncl;

 if (clsize > dn_hwm.clsize) {
  any = 1;
  dn_hwm.clsize = clsize;
 } else
  clsize = dn_hwm.clsize;

 mtx_unlock(&dn_hwm_lk);

 if (any)
  debugnet_mbuf_reinit(nmbuf, ncl, clsize);
}
