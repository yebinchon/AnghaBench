
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ext_type; int timer; } ;
typedef TYPE_1__* PVBUS_EXT ;
typedef int HPT_U32 ;


 scalar_t__ EXT_TYPE_VBUS ;
 int HPT_ASSERT (int) ;
 int SBT_1US ;
 int callout_reset_sbt (int *,int,int ,int ,TYPE_1__*,int ) ;
 int os_timer_for_ldm ;

void os_request_timer(void * osext, HPT_U32 interval)
{
 PVBUS_EXT vbus_ext = osext;

 HPT_ASSERT(vbus_ext->ext_type==EXT_TYPE_VBUS);

 callout_reset_sbt(&vbus_ext->timer, SBT_1US * interval, 0,
     os_timer_for_ldm, vbus_ext, 0);
}
