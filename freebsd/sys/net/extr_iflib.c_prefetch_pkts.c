
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* iflib_fl_t ;
typedef int * caddr_t ;
struct TYPE_5__ {int ** ifsd_cl; int ** ifsd_m; } ;
struct TYPE_6__ {int ifl_size; TYPE_1__ ifl_sds; } ;


 int CACHE_PTR_INCREMENT ;
 int * calc_next_rxd (TYPE_2__*,int) ;
 int prefetch (int *) ;

__attribute__((used)) static inline void
prefetch_pkts(iflib_fl_t fl, int cidx)
{
 int nextptr;
 int nrxd = fl->ifl_size;
 caddr_t next_rxd;


 nextptr = (cidx + CACHE_PTR_INCREMENT) & (nrxd-1);
 prefetch(&fl->ifl_sds.ifsd_m[nextptr]);
 prefetch(&fl->ifl_sds.ifsd_cl[nextptr]);
 next_rxd = calc_next_rxd(fl, cidx);
 prefetch(next_rxd);
 prefetch(fl->ifl_sds.ifsd_m[(cidx + 1) & (nrxd-1)]);
 prefetch(fl->ifl_sds.ifsd_m[(cidx + 2) & (nrxd-1)]);
 prefetch(fl->ifl_sds.ifsd_m[(cidx + 3) & (nrxd-1)]);
 prefetch(fl->ifl_sds.ifsd_m[(cidx + 4) & (nrxd-1)]);
 prefetch(fl->ifl_sds.ifsd_cl[(cidx + 1) & (nrxd-1)]);
 prefetch(fl->ifl_sds.ifsd_cl[(cidx + 2) & (nrxd-1)]);
 prefetch(fl->ifl_sds.ifsd_cl[(cidx + 3) & (nrxd-1)]);
 prefetch(fl->ifl_sds.ifsd_cl[(cidx + 4) & (nrxd-1)]);
}
