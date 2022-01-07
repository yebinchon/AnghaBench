
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct terminal {int dummy; } ;


 int hz ;
 int sysbeep (int,int) ;
 int vt_enable_bell ;
 int vtterm_bell (struct terminal*) ;

__attribute__((used)) static void
vtterm_beep(struct terminal *tm, u_int param)
{
 u_int freq, period;

 if (!vt_enable_bell)
  return;

 if ((param == 0) || ((param & 0xffff) == 0)) {
  vtterm_bell(tm);
  return;
 }

 period = ((param >> 16) & 0xffff) * hz / 1000;
 freq = 1193182 / (param & 0xffff);

 sysbeep(freq, period);
}
