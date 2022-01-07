
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oq; int iq; } ;
struct octeon_device {int octeon_id; scalar_t__ chip; scalar_t__* instr_queue; TYPE_1__ io_qmask; scalar_t__* droq; } ;


 int BIT_ULL (int) ;
 int LIO_MAX_INSTR_QUEUES (struct octeon_device*) ;
 int LIO_MAX_OUTPUT_QUEUES (struct octeon_device*) ;
 int M_DEVBUF ;
 int free (scalar_t__,int ) ;
 int ** octeon_device ;
 int octeon_device_count ;

void
lio_free_device_mem(struct octeon_device *oct)
{
 int i;

 for (i = 0; i < LIO_MAX_OUTPUT_QUEUES(oct); i++) {
  if ((oct->io_qmask.oq & BIT_ULL(i)) && (oct->droq[i]))
   free(oct->droq[i], M_DEVBUF);
 }

 for (i = 0; i < LIO_MAX_INSTR_QUEUES(oct); i++) {
  if ((oct->io_qmask.iq & BIT_ULL(i)) && (oct->instr_queue[i]))
   free(oct->instr_queue[i], M_DEVBUF);
 }

 i = oct->octeon_id;
 free(oct->chip, M_DEVBUF);

 octeon_device[i] = ((void*)0);
 octeon_device_count--;
}
