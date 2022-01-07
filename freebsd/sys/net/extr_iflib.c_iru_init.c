
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef TYPE_1__* iflib_rxq_t ;
typedef TYPE_2__* iflib_fl_t ;
typedef TYPE_3__* if_rxd_update_t ;
struct TYPE_8__ {int iru_flidx; int iru_buf_size; int iru_qsidx; int iru_idxs; int * iru_vaddrs; int iru_paddrs; } ;
struct TYPE_7__ {int ifl_id; int ifl_buf_size; int ifl_rxd_idxs; int * ifl_vm_addrs; int ifl_bus_addrs; } ;
struct TYPE_6__ {int ifr_id; TYPE_2__* ifr_fl; } ;



__attribute__((used)) static void
iru_init(if_rxd_update_t iru, iflib_rxq_t rxq, uint8_t flid)
{
 iflib_fl_t fl;

 fl = &rxq->ifr_fl[flid];
 iru->iru_paddrs = fl->ifl_bus_addrs;
 iru->iru_vaddrs = &fl->ifl_vm_addrs[0];
 iru->iru_idxs = fl->ifl_rxd_idxs;
 iru->iru_qsidx = rxq->ifr_id;
 iru->iru_buf_size = fl->ifl_buf_size;
 iru->iru_flidx = fl->ifl_id;
}
