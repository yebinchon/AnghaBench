
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {scalar_t__ td_rtcgen; } ;


 scalar_t__ rtc_generation ;

__attribute__((used)) static bool
sleeping_on_old_rtc(struct thread *td)
{
 if (td->td_rtcgen != 0 && td->td_rtcgen != rtc_generation) {
  td->td_rtcgen = 0;
  return (1);
 }
 return (0);
}
