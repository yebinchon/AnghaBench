
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cx_board_t ;


 int DELAY (int) ;
 int cx_probe_irq (int *,int) ;

__attribute__((used)) static int probe_irq (cx_board_t *b, int irq)
{
 int mask, busy, cnt;


 cx_probe_irq (b, -irq);
 DELAY (100);
 for (cnt=0; cnt<5; ++cnt) {


  busy = cx_probe_irq (b, irq);
  DELAY (100);



  mask = cx_probe_irq (b, -irq);
  DELAY (100);
  if ((mask & ~busy) == 1 << irq) {
   cx_probe_irq (b, 0);


   return 1;
  }
 }


 cx_probe_irq (b, 0);
 return 0;
}
