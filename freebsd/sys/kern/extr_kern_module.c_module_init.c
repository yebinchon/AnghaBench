
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int SHUTDOWN_PRI_DEFAULT ;
 int TAILQ_INIT (int *) ;
 int module_shutdown ;
 int modules ;
 int modules_sx ;
 int shutdown_final ;
 int sx_init (int *,char*) ;

__attribute__((used)) static void
module_init(void *arg)
{

 sx_init(&modules_sx, "module subsystem sx lock");
 TAILQ_INIT(&modules);
 EVENTHANDLER_REGISTER(shutdown_final, module_shutdown, ((void*)0),
     SHUTDOWN_PRI_DEFAULT);
}
