
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int lv1_panic (int) ;

__attribute__((used)) static void
ps3_reset(platform_t plat)
{
 lv1_panic(1);
}
