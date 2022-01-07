
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct smu_cmd {int len; int * data; int cmd; } ;
struct clocktime {void* year; void* mon; void* day; void* dow; void* hour; void* min; void* sec; scalar_t__ nsec; } ;
typedef int device_t ;


 int ENXIO ;
 int SMU_RTC ;
 int SMU_RTC_GET ;
 void* bcd2bin (int ) ;
 int clock_ct_to_ts (struct clocktime*,struct timespec*) ;
 scalar_t__ smu_run_cmd (int ,struct smu_cmd*,int) ;

__attribute__((used)) static int
smu_gettime(device_t dev, struct timespec *ts)
{
 struct smu_cmd cmd;
 struct clocktime ct;

 cmd.cmd = SMU_RTC;
 cmd.len = 1;
 cmd.data[0] = SMU_RTC_GET;

 if (smu_run_cmd(dev, &cmd, 1) != 0)
  return (ENXIO);

 ct.nsec = 0;
 ct.sec = bcd2bin(cmd.data[0]);
 ct.min = bcd2bin(cmd.data[1]);
 ct.hour = bcd2bin(cmd.data[2]);
 ct.dow = bcd2bin(cmd.data[3]);
 ct.day = bcd2bin(cmd.data[4]);
 ct.mon = bcd2bin(cmd.data[5]);
 ct.year = bcd2bin(cmd.data[6]) + 2000;

 return (clock_ct_to_ts(&ct, ts));
}
