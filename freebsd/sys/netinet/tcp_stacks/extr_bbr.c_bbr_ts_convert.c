
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int MS_IN_USEC ;
 int USECS_IN_SECOND ;

__attribute__((used)) static uint32_t
bbr_ts_convert(uint32_t cts) {
 uint32_t sec, msec;

 sec = cts / MS_IN_USEC;
 msec = cts - (MS_IN_USEC * sec);
 return ((sec * USECS_IN_SECOND) + (msec * MS_IN_USEC));
}
