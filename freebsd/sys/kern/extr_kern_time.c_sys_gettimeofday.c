
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timezone {scalar_t__ tz_dsttime; scalar_t__ tz_minuteswest; } ;
struct timeval {scalar_t__ tz_dsttime; scalar_t__ tz_minuteswest; } ;
struct thread {int dummy; } ;
struct gettimeofday_args {int * tzp; int * tp; } ;
typedef int rtz ;
typedef int atv ;


 int copyout (struct timezone*,int *,int) ;
 int microtime (struct timezone*) ;

int
sys_gettimeofday(struct thread *td, struct gettimeofday_args *uap)
{
 struct timeval atv;
 struct timezone rtz;
 int error = 0;

 if (uap->tp) {
  microtime(&atv);
  error = copyout(&atv, uap->tp, sizeof (atv));
 }
 if (error == 0 && uap->tzp != ((void*)0)) {
  rtz.tz_minuteswest = 0;
  rtz.tz_dsttime = 0;
  error = copyout(&rtz, uap->tzp, sizeof (rtz));
 }
 return (error);
}
