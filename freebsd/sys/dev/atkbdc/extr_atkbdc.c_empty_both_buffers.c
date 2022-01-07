
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int aux; int kbd; } ;
typedef int KBDC ;


 int DELAY (int) ;
 int KBDD_DELAYTIME ;
 int KBDS_ANY_BUFFER_FULL ;
 int KBDS_BUFFER_FULL ;
 int KBDS_KBD_BUFFER_FULL ;
 int LOG_DEBUG ;
 int emptyq (int *) ;
 TYPE_1__* kbdcp (int ) ;
 int log (int ,char*,int,int) ;
 int read_data (TYPE_1__*) ;
 int read_status (TYPE_1__*) ;

void
empty_both_buffers(KBDC p, int wait)
{
    int t;
    int f;
    int waited = 0;




    int delta = 2;

    for (t = wait; t > 0; ) {
        if ((f = read_status(kbdcp(p))) & KBDS_ANY_BUFFER_FULL) {
     DELAY(KBDD_DELAYTIME);
            (void)read_data(kbdcp(p));






     t = wait;
 } else {
     t -= delta;
 }






        waited += (delta * 1000);
        if (waited == (delta * 1000000))
     return;

 DELAY(delta*1000);
    }





    emptyq(&kbdcp(p)->kbd);
    emptyq(&kbdcp(p)->aux);
}
