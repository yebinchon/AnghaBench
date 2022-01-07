
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kbd; int aux; } ;
typedef int KBDC ;


 int DELAY (int ) ;
 int KBDD_DELAYTIME ;
 int KBDS_AUX_BUFFER_FULL ;
 int KBDS_BUFFER_FULL ;
 int KBDS_KBD_BUFFER_FULL ;
 int addq (int *,int) ;
 scalar_t__ availq (int *) ;
 TYPE_1__* kbdcp (int ) ;
 int read_data (TYPE_1__*) ;
 int read_status (TYPE_1__*) ;
 int removeq (int *) ;

int
read_aux_data_no_wait(KBDC p)
{
    int f;

    if (availq(&kbdcp(p)->aux))
        return removeq(&kbdcp(p)->aux);
    f = read_status(kbdcp(p)) & KBDS_BUFFER_FULL;
    if (f == KBDS_KBD_BUFFER_FULL) {
        DELAY(KBDD_DELAYTIME);
        addq(&kbdcp(p)->kbd, read_data(kbdcp(p)));
        f = read_status(kbdcp(p)) & KBDS_BUFFER_FULL;
    }
    if (f == KBDS_AUX_BUFFER_FULL) {
        DELAY(KBDD_DELAYTIME);
        return read_data(kbdcp(p));
    }
    return -1;
}
