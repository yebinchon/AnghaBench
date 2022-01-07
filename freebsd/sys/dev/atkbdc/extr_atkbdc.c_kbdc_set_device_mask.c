
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int command_mask; int quirks; } ;
typedef int KBDC ;


 int KBDC_QUIRK_KEEP_ACTIVATED ;
 int KBD_AUX_CONTROL_BITS ;
 int KBD_KBD_CONTROL_BITS ;
 TYPE_1__* kbdcp (int ) ;

void
kbdc_set_device_mask(KBDC p, int mask)
{
    kbdcp(p)->command_mask =
 mask & (((kbdcp(p)->quirks & KBDC_QUIRK_KEEP_ACTIVATED)
     ? 0 : KBD_KBD_CONTROL_BITS) | KBD_AUX_CONTROL_BITS);
}
