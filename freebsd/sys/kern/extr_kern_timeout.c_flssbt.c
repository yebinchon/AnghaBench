
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sbintime_t ;


 int SBT_1S ;
 int flsl (int) ;

__attribute__((used)) static int
flssbt(sbintime_t sbt)
{

 sbt += (uint64_t)sbt >> 1;
 if (sizeof(long) >= sizeof(sbintime_t))
  return (flsl(sbt));
 if (sbt >= SBT_1S)
  return (flsl(((uint64_t)sbt) >> 32) + 32);
 return (flsl(sbt));
}
