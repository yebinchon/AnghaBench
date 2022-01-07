
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_onestr ;
 int do_onesys ;
 int foreach_confstr (int ) ;
 int foreach_sysconf (int ) ;

__attribute__((used)) static void
do_allsys(void)
{

 foreach_confstr(do_onestr);
 foreach_sysconf(do_onesys);
}
