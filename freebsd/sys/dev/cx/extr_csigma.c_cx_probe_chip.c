
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int port_t ;


 int GFRCR (int ) ;
 int REVCL31_MAX ;
 int REVCL31_MIN ;
 int REVCL_MAX ;
 int REVCL_MIN ;
 int cx_reset (int ) ;
 int inb (int ) ;

__attribute__((used)) static int cx_probe_chip (port_t base)
{
 int rev, newrev, count;


 rev = 0;
 for (count=0; rev==0; ++count) {
  if (count >= 20000)
   return (0);
  rev = inb (GFRCR(base));
 }


 if (! (rev>=REVCL_MIN && rev<=REVCL_MAX) &&
     ! (rev>=REVCL31_MIN && rev<=REVCL31_MAX))
  return (0);


 if (! cx_reset (base))
  return (0);


 newrev = inb (GFRCR(base));
 if (newrev != rev)
  return (0);


 return (1);
}
