
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ vbus; } ;
typedef TYPE_1__* PVBUS_EXT ;
typedef int PVBUS ;


 int ldm_on_timer (int ) ;

__attribute__((used)) static void os_timer_for_ldm(void *arg)
{
 PVBUS_EXT vbus_ext = (PVBUS_EXT)arg;
 ldm_on_timer((PVBUS)vbus_ext->vbus);
}
