
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int command_mask; } ;
typedef int KBDC ;


 TYPE_1__* kbdcp (int ) ;

int
kbdc_get_device_mask(KBDC p)
{
    return kbdcp(p)->command_mask;
}
