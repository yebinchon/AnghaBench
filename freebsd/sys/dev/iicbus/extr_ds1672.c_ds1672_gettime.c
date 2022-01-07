
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef int device_t ;


 int CLOCK_DBG_READ ;
 int DS1672_COUNTER ;
 int clock_dbgprint_ts (int ,int ,struct timespec*) ;
 int ds1672_read (int ,int ,int*,int) ;

__attribute__((used)) static int
ds1672_gettime(device_t dev, struct timespec *ts)
{
 uint8_t secs[4];
 int error;

 error = ds1672_read(dev, DS1672_COUNTER, secs, 4);
 if (error == 0) {

  ts->tv_sec = (secs[3] << 24) | (secs[2] << 16)
      | (secs[1] << 8) | (secs[0] << 0);
  ts->tv_nsec = 0;
 }
 clock_dbgprint_ts(dev, CLOCK_DBG_READ, ts);
 return (error);
}
