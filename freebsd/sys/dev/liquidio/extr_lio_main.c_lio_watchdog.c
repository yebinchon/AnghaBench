
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct octeon_device {int cores_crashed; int watchdog_task; } ;
typedef int err_msg_was_printed ;


 int LIO_CN23XX_SLI_SCRATCH2 ;
 int LIO_MAX_CORES ;
 int bzero (int*,int) ;
 int kproc_suspend_check (int ) ;
 int lio_dev_err (struct octeon_device*,char*,int) ;
 struct octeon_device* lio_get_other_octeon_device (struct octeon_device*) ;
 int lio_ms_to_ticks (int) ;
 scalar_t__ lio_read_csr64 (struct octeon_device*,int ) ;
 int pause (char*,int ) ;

__attribute__((used)) static void
lio_watchdog(void *param)
{
 int core_num;
 uint16_t mask_of_crashed_or_stuck_cores = 0;
 struct octeon_device *oct = param;
 bool err_msg_was_printed[12];

 bzero(err_msg_was_printed, sizeof(err_msg_was_printed));

 while (1) {
  kproc_suspend_check(oct->watchdog_task);
  mask_of_crashed_or_stuck_cores =
   (uint16_t)lio_read_csr64(oct, LIO_CN23XX_SLI_SCRATCH2);

  if (mask_of_crashed_or_stuck_cores) {
   struct octeon_device *other_oct;

   oct->cores_crashed = 1;
   other_oct = lio_get_other_octeon_device(oct);
   if (other_oct != ((void*)0))
    other_oct->cores_crashed = 1;

   for (core_num = 0; core_num < LIO_MAX_CORES;
        core_num++) {
    bool core_crashed_or_got_stuck;

    core_crashed_or_got_stuck =
        (mask_of_crashed_or_stuck_cores >>
         core_num) & 1;
    if (core_crashed_or_got_stuck &&
        !err_msg_was_printed[core_num]) {
     lio_dev_err(oct,
          "ERROR: Octeon core %d crashed or got stuck! See oct-fwdump for details.\n",
          core_num);
     err_msg_was_printed[core_num] = 1;
    }
   }

  }


  pause("-", lio_ms_to_ticks(2000));
 }
}
