
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int max_qcount; int call_count; } ;
struct TYPE_7__ {int max_qcount; int call_count; } ;
struct TYPE_8__ {TYPE_6__ aux; TYPE_1__ kbd; } ;
typedef int KBDC ;


 int DELAY (int ) ;
 int KBDD_DELAYTIME ;
 int KBDS_AUX_BUFFER_FULL ;
 int KBDS_BUFFER_FULL ;
 int KBDS_KBD_BUFFER_FULL ;
 int LOG_DEBUG ;
 int addq (TYPE_6__*,int) ;
 scalar_t__ availq (TYPE_1__*) ;
 int call ;
 TYPE_2__* kbdcp (int ) ;
 int log (int ,char*,int ,int ,int ,int ) ;
 int read_data (TYPE_2__*) ;
 int read_status (TYPE_2__*) ;
 int removeq (TYPE_1__*) ;

int
read_kbd_data_no_wait(KBDC p)
{
    int f;
    if (availq(&kbdcp(p)->kbd))
        return removeq(&kbdcp(p)->kbd);
    f = read_status(kbdcp(p)) & KBDS_BUFFER_FULL;
    if (f == KBDS_AUX_BUFFER_FULL) {
        DELAY(KBDD_DELAYTIME);
        addq(&kbdcp(p)->aux, read_data(kbdcp(p)));
        f = read_status(kbdcp(p)) & KBDS_BUFFER_FULL;
    }
    if (f == KBDS_KBD_BUFFER_FULL) {
        DELAY(KBDD_DELAYTIME);
        return read_data(kbdcp(p));
    }
    return -1;
}
