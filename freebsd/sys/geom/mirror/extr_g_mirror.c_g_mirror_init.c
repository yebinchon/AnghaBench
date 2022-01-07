
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 int * EVENTHANDLER_REGISTER (int ,int ,struct g_class*,int ) ;
 int G_MIRROR_DEBUG (int ,char*) ;
 int SHUTDOWN_PRI_FIRST ;
 int * g_mirror_post_sync ;
 int g_mirror_shutdown_post_sync ;
 int shutdown_post_sync ;

__attribute__((used)) static void
g_mirror_init(struct g_class *mp)
{

 g_mirror_post_sync = EVENTHANDLER_REGISTER(shutdown_post_sync,
     g_mirror_shutdown_post_sync, mp, SHUTDOWN_PRI_FIRST);
 if (g_mirror_post_sync == ((void*)0))
  G_MIRROR_DEBUG(0, "Warning! Cannot register shutdown event.");
}
