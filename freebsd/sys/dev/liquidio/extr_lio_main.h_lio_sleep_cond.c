
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_device {int * instr_queue; } ;


 int lio_flush_iq (struct octeon_device*,int ,int ) ;
 int lio_mdelay (int) ;
 int lio_process_ordered_list (struct octeon_device*,int ) ;

__attribute__((used)) static inline void
lio_sleep_cond(struct octeon_device *oct, volatile int *condition)
{

 while (!(*condition)) {
  lio_mdelay(1);
  lio_flush_iq(oct, oct->instr_queue[0], 0);
  lio_process_ordered_list(oct, 0);
 }
}
