
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ ext_type; int timer; } ;
typedef TYPE_1__* PVBUS_EXT ;
typedef int HPT_U32 ;


 scalar_t__ EXT_TYPE_VBUS ;
 int HPT_ASSERT (int) ;
 int SBT_1US ;
 int callout_reset_sbt (int *,int,int ,int ,TYPE_1__*,int ) ;
 int hz ;
 int os_timer_for_ldm ;
 int timeout (int ,TYPE_1__*,int) ;
 int untimeout (int ,TYPE_1__*,int ) ;

void os_request_timer(void * osext, HPT_U32 interval)
{
 PVBUS_EXT vbus_ext = osext;

 HPT_ASSERT(vbus_ext->ext_type==EXT_TYPE_VBUS);





 untimeout(os_timer_for_ldm, vbus_ext, vbus_ext->timer);
 vbus_ext->timer = timeout(os_timer_for_ldm, vbus_ext, interval * hz / 1000000);

}
