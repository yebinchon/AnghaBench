
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kbd; int aux; } ;
typedef int KBDC ;


 int DELAY (int) ;
 int KBDD_DELAYTIME ;
 int KBDS_ANY_BUFFER_FULL ;
 int KBDS_AUX_BUFFER_FULL ;
 int KBDS_BUFFER_FULL ;
 int LOG_DEBUG ;
 int addq (int *,int) ;
 int emptyq (int *) ;
 TYPE_1__* kbdcp (int ) ;
 int log (int ,char*,int,int) ;
 int read_data (TYPE_1__*) ;
 int read_status (TYPE_1__*) ;

void
empty_kbd_buffer(KBDC p, int wait)
{
    int t;
    int b;
    int f;




    int delta = 2;

    for (t = wait; t > 0; ) {
        if ((f = read_status(kbdcp(p))) & KBDS_ANY_BUFFER_FULL) {
     DELAY(KBDD_DELAYTIME);
            b = read_data(kbdcp(p));
     if ((f & KBDS_BUFFER_FULL) == KBDS_AUX_BUFFER_FULL) {
  addq(&kbdcp(p)->aux, b);





     }
     t = wait;
 } else {
     t -= delta;
 }
        DELAY(delta*1000);
    }





    emptyq(&kbdcp(p)->kbd);
}
