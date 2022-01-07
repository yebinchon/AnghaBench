
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cur_fd ;
 int first_stop ;
 int report_stop () ;
 scalar_t__ response_pending () ;
 int send_pending_data (int ) ;
 int stop_pending ;
 int stopped_vcpu ;

__attribute__((used)) static void
gdb_finish_suspend_vcpus(void)
{

 if (first_stop) {
  first_stop = 0;
  stopped_vcpu = -1;
 } else if (response_pending())
  stop_pending = 1;
 else {
  report_stop();
  send_pending_data(cur_fd);
 }
}
