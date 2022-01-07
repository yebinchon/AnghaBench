
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timespec {scalar_t__ tv_sec; scalar_t__ tv_nsec; int member_1; int member_0; } ;
typedef int mask ;
typedef int int32_t ;


 int CLOCK_MONOTONIC_FAST ;
 scalar_t__ ENOENT ;
 int EVDEV_RCPT_HW_KBD ;
 int EVDEV_RCPT_HW_MOUSE ;
 scalar_t__ MASK_POLL_INTERVAL ;
 int MASK_SYSCTL ;
 int clock_gettime (int ,struct timespec*) ;
 scalar_t__ errno ;
 scalar_t__ sysctlbyname (int ,int*,size_t*,int *,int ) ;

__attribute__((used)) static int32_t
uinput_get_rcpt_mask(void)
{
 static struct timespec last = { 0, 0 };
 struct timespec now;
 static int32_t mask = 0;
 size_t len;
 time_t elapsed;

 if (clock_gettime(CLOCK_MONOTONIC_FAST, &now) == -1)
  return mask;

 elapsed = now.tv_sec - last.tv_sec;
 if (now.tv_nsec < last.tv_nsec)
  elapsed--;

 if (elapsed >= MASK_POLL_INTERVAL) {
  len = sizeof(mask);
  if (sysctlbyname(MASK_SYSCTL, &mask, &len, ((void*)0), 0) < 0) {
   if (errno == ENOENT)

    mask = EVDEV_RCPT_HW_MOUSE | EVDEV_RCPT_HW_KBD;
   else
    mask = 0;
  }
  last = now;
 }
 return mask;
}
