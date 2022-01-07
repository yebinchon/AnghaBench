
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int powernv_smp_ap_extra_init () ;

__attribute__((used)) static void
powernv_smp_ap_init(platform_t platform)
{

 if (powernv_smp_ap_extra_init != ((void*)0))
  powernv_smp_ap_extra_init();
}
