
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int STACK ;
 int ahd_inb (struct ahd_softc*,int ) ;
 int ahd_outb (struct ahd_softc*,int ,int) ;

__attribute__((used)) static int
ahd_probe_stack_size(struct ahd_softc *ahd)
{
 int last_probe;

 last_probe = 0;
 while (1) {
  int i;







  for (i = 1; i <= last_probe+1; i++) {
         ahd_outb(ahd, STACK, i & 0xFF);
         ahd_outb(ahd, STACK, (i >> 8) & 0xFF);
  }


  for (i = last_probe+1; i > 0; i--) {
   u_int stack_entry;

   stack_entry = ahd_inb(ahd, STACK)
        |(ahd_inb(ahd, STACK) << 8);
   if (stack_entry != i)
    goto sized;
  }
  last_probe++;
 }
sized:
 return (last_probe);
}
