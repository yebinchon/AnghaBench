
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* enable_interrupt ) (struct octeon_device*,int ) ;int (* process_interrupt_regs ) (struct octeon_device*) ;int (* disable_interrupt ) (struct octeon_device*,int ) ;} ;
struct octeon_device {TYPE_1__ fn_list; int status; } ;


 scalar_t__ LIO_DEV_IN_RESET ;
 int OCTEON_ALL_INTR ;
 scalar_t__ atomic_load_acq_int (int *) ;
 int lio_schedule_droq_pkt_handlers (struct octeon_device*) ;
 int stub1 (struct octeon_device*,int ) ;
 int stub2 (struct octeon_device*) ;
 int stub3 (struct octeon_device*,int ) ;

__attribute__((used)) static void
lio_intr_handler(void *dev)
{
 struct octeon_device *oct = (struct octeon_device *)dev;


 oct->fn_list.disable_interrupt(oct, OCTEON_ALL_INTR);

 oct->fn_list.process_interrupt_regs(oct);

 lio_schedule_droq_pkt_handlers(oct);


 if (!(atomic_load_acq_int(&oct->status) == LIO_DEV_IN_RESET))
  oct->fn_list.enable_interrupt(oct, OCTEON_ALL_INTR);
}
