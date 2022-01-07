
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int max_qcount; int call_count; } ;
struct TYPE_7__ {int max_qcount; int call_count; } ;
struct TYPE_8__ {TYPE_3__ kbd; TYPE_1__ aux; } ;
typedef int KBDC ;


 int LOG_DEBUG ;
 scalar_t__ availq (TYPE_3__*) ;
 int call ;
 TYPE_2__* kbdcp (int ) ;
 int log (int ,char*,int ,int ,int ,int ) ;
 int read_data (TYPE_2__*) ;
 int removeq (TYPE_3__*) ;
 int wait_for_kbd_data (TYPE_2__*) ;

int
read_kbd_data(KBDC p)
{
    if (availq(&kbdcp(p)->kbd))
        return removeq(&kbdcp(p)->kbd);
    if (!wait_for_kbd_data(kbdcp(p)))
        return -1;
    return read_data(kbdcp(p));
}
