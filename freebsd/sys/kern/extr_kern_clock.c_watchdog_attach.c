
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int watchdog_config ;
 int watchdog_list ;

__attribute__((used)) static void
watchdog_attach(void)
{
 EVENTHANDLER_REGISTER(watchdog_list, watchdog_config, ((void*)0), 0);
}
