
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct timespec {int dummy; } ;
struct clocktime {int year; int nsec; int hour; int min; int sec; int mon; int day; } ;
typedef int device_t ;


 int ENXIO ;
 int OPAL_BUSY_EVENT ;
 int OPAL_POLL_EVENTS ;
 int OPAL_RTC_WRITE ;
 int OPAL_SUCCESS ;
 scalar_t__ bin2bcd (int ) ;
 scalar_t__ bin2bcd32 (int) ;
 int clock_ts_to_ct (struct timespec*,struct clocktime*) ;
 int htobe32 (int) ;
 int htobe64 (int) ;
 int opal_call (int ,int ,...) ;
 int pause (char*,int) ;
 int vtophys (int*) ;

__attribute__((used)) static int
opal_settime(device_t dev, struct timespec *ts)
{
 int rv;
 struct clocktime ct;
 uint32_t ymd = 0;
 uint64_t hmsm = 0;

 clock_ts_to_ct(ts, &ct);

 ymd |= (uint32_t)bin2bcd(ct.day);
 ymd |= ((uint32_t)bin2bcd(ct.mon) << 8);
 ymd |= ((uint32_t)bin2bcd32(ct.year) << 16);

 hmsm |= ((uint64_t)bin2bcd32(ct.nsec/1000) << 16);
 hmsm |= ((uint64_t)bin2bcd(ct.sec) << 40);
 hmsm |= ((uint64_t)bin2bcd(ct.min) << 48);
 hmsm |= ((uint64_t)bin2bcd(ct.hour) << 56);

 hmsm = htobe64(hmsm);
 ymd = htobe32(ymd);

 do {
  rv = opal_call(OPAL_RTC_WRITE, vtophys(&ymd), vtophys(&hmsm));
  if (rv == OPAL_BUSY_EVENT) {
   rv = opal_call(OPAL_POLL_EVENTS, 0);
   pause("opalrtc", 1);
  }
 } while (rv == OPAL_BUSY_EVENT);

 if (rv != OPAL_SUCCESS)
  return (ENXIO);

 return (0);
}
