
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int q_no; } ;
union octeon_txpciq {int txpciq64; TYPE_1__ s; } ;
typedef size_t uint32_t ;
struct TYPE_8__ {scalar_t__ (* enable_io_queues ) (struct octeon_device*) ;} ;
struct octeon_device {TYPE_4__ fn_list; int num_iqs; TYPE_3__** instr_queue; } ;
struct TYPE_6__ {int txpciq64; } ;
struct TYPE_7__ {int q_index; int ifidx; TYPE_2__ txpciq; int * oct_dev; } ;


 int lio_delete_instr_queue (struct octeon_device*,size_t) ;
 int lio_dev_dbg (struct octeon_device*,char*,size_t) ;
 scalar_t__ lio_init_instr_queue (struct octeon_device*,union octeon_txpciq,size_t) ;
 scalar_t__ stub1 (struct octeon_device*) ;

int
lio_setup_iq(struct octeon_device *oct, int ifidx, int q_index,
      union octeon_txpciq txpciq, uint32_t num_descs)
{
 uint32_t iq_no = (uint32_t)txpciq.s.q_no;

 if (oct->instr_queue[iq_no]->oct_dev != ((void*)0)) {
  lio_dev_dbg(oct, "IQ is in use. Cannot create the IQ: %d again\n",
       iq_no);
  oct->instr_queue[iq_no]->txpciq.txpciq64 = txpciq.txpciq64;
  return (0);
 }

 oct->instr_queue[iq_no]->q_index = q_index;
 oct->instr_queue[iq_no]->ifidx = ifidx;

 if (lio_init_instr_queue(oct, txpciq, num_descs)) {
  lio_delete_instr_queue(oct, iq_no);
  return (1);
 }

 oct->num_iqs++;
 if (oct->fn_list.enable_io_queues(oct))
  return (1);

 return (0);
}
