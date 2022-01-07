
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int cpu_tick_calibrate (int ) ;
 int time_uptime ;

void
cpu_tick_calibration(void)
{
 static time_t last_calib;

 if (time_uptime != last_calib && !(time_uptime & 0xf)) {
  cpu_tick_calibrate(0);
  last_calib = time_uptime;
 }
}
