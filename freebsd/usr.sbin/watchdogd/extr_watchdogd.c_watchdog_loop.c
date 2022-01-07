
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct stat {int dummy; } ;


 int WD_ACTIVE ;
 int end_program ;
 long nap ;
 int sleep (long) ;
 int stat (char*,struct stat*) ;
 int system (int *) ;
 int * test_cmd ;
 int timeout ;
 int warnx (char*) ;
 long watchdog_check_dogfunction_time (struct timespec*,struct timespec*) ;
 int watchdog_getuptime (struct timespec*) ;
 scalar_t__ watchdog_onoff (int ) ;
 int watchdog_patpat (int) ;

__attribute__((used)) static void
watchdog_loop(void)
{
 struct timespec ts_start, ts_end;
 struct stat sb;
 long waited;
 int error, failed;

 while (end_program != 2) {
  failed = 0;

  error = watchdog_getuptime(&ts_start);
  if (error) {
   end_program = 1;
   goto try_end;
  }

  if (test_cmd != ((void*)0))
   failed = system(test_cmd);
  else
   failed = stat("/etc", &sb);

  error = watchdog_getuptime(&ts_end);
  if (error) {
   end_program = 1;
   goto try_end;
  }

  if (failed == 0)
   watchdog_patpat(timeout|WD_ACTIVE);

  waited = watchdog_check_dogfunction_time(&ts_start, &ts_end);
  if (nap - waited > 0)
   sleep(nap - waited);

try_end:
  if (end_program != 0) {
   if (watchdog_onoff(0) == 0) {
    end_program = 2;
   } else {
    warnx("Could not stop the watchdog, not exiting");
    end_program = 0;
   }
  }
 }
}
