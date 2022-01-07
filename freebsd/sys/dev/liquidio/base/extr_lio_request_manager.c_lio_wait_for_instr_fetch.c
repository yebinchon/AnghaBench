
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int iq; } ;
struct octeon_device {TYPE_1__** instr_queue; TYPE_2__ io_qmask; } ;
struct TYPE_3__ {int instr_pending; } ;


 int BIT_ULL (int) ;
 int LIO_MAX_INSTR_QUEUES (struct octeon_device*) ;
 int __lio_check_db_timeout (struct octeon_device*,int) ;
 int atomic_load_acq_int (int *) ;
 int lio_sleep_timeout (int) ;

int
lio_wait_for_instr_fetch(struct octeon_device *oct)
{
 int i, retry = 1000, pending, instr_cnt = 0;

 do {
  instr_cnt = 0;

  for (i = 0; i < LIO_MAX_INSTR_QUEUES(oct); i++) {
   if (!(oct->io_qmask.iq & BIT_ULL(i)))
    continue;
   pending = atomic_load_acq_int(
     &oct->instr_queue[i]->instr_pending);
   if (pending)
    __lio_check_db_timeout(oct, i);
   instr_cnt += pending;
  }

  if (instr_cnt == 0)
   break;

  lio_sleep_timeout(1);

 } while (retry-- && instr_cnt);

 return (instr_cnt);
}
