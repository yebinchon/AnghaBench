
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int OPAL_CEC_REBOOT ;
 int opal_call (int ) ;

__attribute__((used)) static void
powernv_reset(platform_t platform)
{

 opal_call(OPAL_CEC_REBOOT);
}
