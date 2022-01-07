
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int OF_reboot () ;

__attribute__((used)) static void
powermac_reset(platform_t platform)
{
 OF_reboot();
}
