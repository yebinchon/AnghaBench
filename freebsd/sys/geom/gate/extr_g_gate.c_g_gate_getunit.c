
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EEXIST ;
 int EINVAL ;
 int ENFILE ;
 int MA_OWNED ;
 int g_gate_maxunits ;
 int ** g_gate_units ;
 int g_gate_units_lock ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static int
g_gate_getunit(int unit, int *errorp)
{

 mtx_assert(&g_gate_units_lock, MA_OWNED);
 if (unit >= 0) {
  if (unit >= g_gate_maxunits)
   *errorp = EINVAL;
  else if (g_gate_units[unit] == ((void*)0))
   return (unit);
  else
   *errorp = EEXIST;
 } else {
  for (unit = 0; unit < g_gate_maxunits; unit++) {
   if (g_gate_units[unit] == ((void*)0))
    return (unit);
  }
  *errorp = ENFILE;
 }
 return (-1);
}
