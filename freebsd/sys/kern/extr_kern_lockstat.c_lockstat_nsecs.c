
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct lock_object {int lo_flags; } ;
struct bintime {int sec; int frac; } ;


 int LO_NOPROFILE ;
 int binuptime (struct bintime*) ;
 int lockstat_enabled ;

uint64_t
lockstat_nsecs(struct lock_object *lo)
{
 struct bintime bt;
 uint64_t ns;

 if (!lockstat_enabled)
  return (0);
 if ((lo->lo_flags & LO_NOPROFILE) != 0)
  return (0);

 binuptime(&bt);
 ns = bt.sec * (uint64_t)1000000000;
 ns += ((uint64_t)1000000000 * (uint32_t)(bt.frac >> 32)) >> 32;
 return (ns);
}
