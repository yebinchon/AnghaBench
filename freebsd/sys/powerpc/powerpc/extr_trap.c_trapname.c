
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct powerpc_exception {scalar_t__ vector; char const* name; } ;


 scalar_t__ EXC_LAST ;
 struct powerpc_exception* powerpc_exceptions ;

__attribute__((used)) static const char *
trapname(u_int vector)
{
 struct powerpc_exception *pe;

 for (pe = powerpc_exceptions; pe->vector != EXC_LAST; pe++) {
  if (pe->vector == vector)
   return (pe->name);
 }

 return ("unknown");
}
