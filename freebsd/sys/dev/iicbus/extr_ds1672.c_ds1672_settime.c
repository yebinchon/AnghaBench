
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {int tv_sec; scalar_t__ tv_nsec; } ;
typedef int device_t ;


 int CLOCK_DBG_WRITE ;
 int DS1672_COUNTER ;
 int clock_dbgprint_ts (int ,int ,struct timespec*) ;
 int ds1672_write (int ,int ,int*,int) ;

__attribute__((used)) static int
ds1672_settime(device_t dev, struct timespec *ts)
{
 uint8_t data[4];

 data[0] = (ts->tv_sec >> 0) & 0xff;
 data[1] = (ts->tv_sec >> 8) & 0xff;
 data[2] = (ts->tv_sec >> 16) & 0xff;
 data[3] = (ts->tv_sec >> 24) & 0xff;

 ts->tv_nsec = 0;
 clock_dbgprint_ts(dev, CLOCK_DBG_WRITE, ts);
 return (ds1672_write(dev, DS1672_COUNTER, data, 4));
}
