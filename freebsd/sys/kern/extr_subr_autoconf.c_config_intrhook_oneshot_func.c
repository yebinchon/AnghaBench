
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oneshot_config_hook {int och_hook; int och_arg; int (* och_func ) (int ) ;} ;


 int M_DEVBUF ;
 int config_intrhook_disestablish (int *) ;
 int free (struct oneshot_config_hook*,int ) ;
 int stub1 (int ) ;

__attribute__((used)) static void
config_intrhook_oneshot_func(void *arg)
{
 struct oneshot_config_hook *ohook;

 ohook = arg;
 ohook->och_func(ohook->och_arg);
 config_intrhook_disestablish(&ohook->och_hook);
 free(ohook, M_DEVBUF);
}
