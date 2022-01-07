
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
struct thread {int dummy; } ;
typedef int int64_t ;


 int NTP_LOCK () ;
 int NTP_UNLOCK () ;
 int PRIV_ADJTIME ;
 int priv_check (struct thread*,int ) ;
 int time_adjtime ;

int
kern_adjtime(struct thread *td, struct timeval *delta, struct timeval *olddelta)
{
 struct timeval atv;
 int64_t ltr, ltw;
 int error;

 if (delta != ((void*)0)) {
  error = priv_check(td, PRIV_ADJTIME);
  if (error != 0)
   return (error);
  ltw = (int64_t)delta->tv_sec * 1000000 + delta->tv_usec;
 }
 NTP_LOCK();
 ltr = time_adjtime;
 if (delta != ((void*)0))
  time_adjtime = ltw;
 NTP_UNLOCK();
 if (olddelta != ((void*)0)) {
  atv.tv_sec = ltr / 1000000;
  atv.tv_usec = ltr % 1000000;
  if (atv.tv_usec < 0) {
   atv.tv_usec += 1000000;
   atv.tv_sec--;
  }
  *olddelta = atv;
 }
 return (0);
}
