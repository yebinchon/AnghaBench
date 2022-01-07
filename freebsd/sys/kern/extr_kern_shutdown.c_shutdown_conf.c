
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_REGISTER (int ,int ,int *,scalar_t__) ;
 scalar_t__ SHUTDOWN_PRI_FIRST ;
 scalar_t__ SHUTDOWN_PRI_LAST ;
 int poweroff_wait ;
 int shutdown_final ;
 int shutdown_halt ;
 int shutdown_panic ;
 int shutdown_reset ;

__attribute__((used)) static void
shutdown_conf(void *unused)
{

 EVENTHANDLER_REGISTER(shutdown_final, poweroff_wait, ((void*)0),
     SHUTDOWN_PRI_FIRST);
 EVENTHANDLER_REGISTER(shutdown_final, shutdown_halt, ((void*)0),
     SHUTDOWN_PRI_LAST + 100);
 EVENTHANDLER_REGISTER(shutdown_final, shutdown_panic, ((void*)0),
     SHUTDOWN_PRI_LAST + 100);
 EVENTHANDLER_REGISTER(shutdown_final, shutdown_reset, ((void*)0),
     SHUTDOWN_PRI_LAST + 200);
}
