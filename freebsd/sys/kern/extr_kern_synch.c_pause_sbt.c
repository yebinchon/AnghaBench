
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sbintime_t ;


 int C_CATCH ;
 int DELAY (scalar_t__) ;
 int EWOULDBLOCK ;
 int KASSERT (int,char*) ;
 int PCATCH ;
 scalar_t__ SBT_1S ;
 int SBT_1US ;
 scalar_t__ SCHEDULER_STOPPED () ;
 int _sleep (int *,int *,int ,char const*,scalar_t__,scalar_t__,int) ;
 scalar_t__ cold ;
 size_t curcpu ;
 int * curthread ;
 scalar_t__ howmany (scalar_t__,int ) ;
 scalar_t__ kdb_active ;
 int * pause_wchan ;
 int thread0 ;
 scalar_t__ tick_sbt ;

int
pause_sbt(const char *wmesg, sbintime_t sbt, sbintime_t pr, int flags)
{
 KASSERT(sbt >= 0, ("pause_sbt: timeout must be >= 0"));


 if (sbt == 0)
  sbt = tick_sbt;

 if ((cold && curthread == &thread0) || kdb_active ||
     SCHEDULER_STOPPED()) {




  while (sbt >= SBT_1S) {
   DELAY(1000000);
   sbt -= SBT_1S;
  }

  sbt = howmany(sbt, SBT_1US);
  if (sbt > 0)
   DELAY(sbt);
  return (EWOULDBLOCK);
 }
 return (_sleep(&pause_wchan[curcpu], ((void*)0),
     (flags & C_CATCH) ? PCATCH : 0, wmesg, sbt, pr, flags));
}
