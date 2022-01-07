
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct oneshot_config_hook* ich_arg; int ich_func; } ;
struct oneshot_config_hook {TYPE_1__ och_hook; void* och_arg; int och_func; } ;
typedef int ich_func_t ;


 int M_DEVBUF ;
 int M_WAITOK ;
 int config_intrhook_establish (TYPE_1__*) ;
 int config_intrhook_oneshot_func ;
 struct oneshot_config_hook* malloc (int,int ,int ) ;

void
config_intrhook_oneshot(ich_func_t func, void *arg)
{
 struct oneshot_config_hook *ohook;

 ohook = malloc(sizeof(*ohook), M_DEVBUF, M_WAITOK);
 ohook->och_func = func;
 ohook->och_arg = arg;
 ohook->och_hook.ich_func = config_intrhook_oneshot_func;
 ohook->och_hook.ich_arg = ohook;
 config_intrhook_establish(&ohook->och_hook);
}
