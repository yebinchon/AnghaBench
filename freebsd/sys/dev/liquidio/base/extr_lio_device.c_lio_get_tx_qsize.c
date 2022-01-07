
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_3__ {int iq; } ;
struct octeon_device {TYPE_2__** instr_queue; TYPE_1__ io_qmask; } ;
struct TYPE_4__ {int max_count; } ;


 int BIT_ULL (size_t) ;
 scalar_t__ LIO_MAX_INSTR_QUEUES (struct octeon_device*) ;

int
lio_get_tx_qsize(struct octeon_device *oct, uint32_t q_no)
{

 if ((oct != ((void*)0)) && (q_no < (uint32_t)LIO_MAX_INSTR_QUEUES(oct)) &&
     (oct->io_qmask.iq & BIT_ULL(q_no)))
  return (oct->instr_queue[q_no]->max_count);


 return (-1);
}
