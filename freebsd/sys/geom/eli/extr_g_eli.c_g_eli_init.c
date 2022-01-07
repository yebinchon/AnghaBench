
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 int * EVENTHANDLER_REGISTER (int ,int ,struct g_class*,int ) ;
 int G_ELI_DEBUG (int ,char*) ;
 int SHUTDOWN_PRI_FIRST ;
 int * g_eli_pre_sync ;
 int g_eli_shutdown_pre_sync ;
 int shutdown_pre_sync ;

__attribute__((used)) static void
g_eli_init(struct g_class *mp)
{

 g_eli_pre_sync = EVENTHANDLER_REGISTER(shutdown_pre_sync,
     g_eli_shutdown_pre_sync, mp, SHUTDOWN_PRI_FIRST);
 if (g_eli_pre_sync == ((void*)0))
  G_ELI_DEBUG(0, "Warning! Cannot register shutdown event.");
}
