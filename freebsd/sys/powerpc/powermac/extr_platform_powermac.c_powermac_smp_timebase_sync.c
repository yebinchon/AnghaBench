
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int platform_t ;


 int mttb (int ) ;

__attribute__((used)) static void
powermac_smp_timebase_sync(platform_t plat, u_long tb, int ap)
{

 mttb(tb);
}
