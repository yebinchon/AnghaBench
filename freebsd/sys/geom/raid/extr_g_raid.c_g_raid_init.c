
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 int * EVENTHANDLER_REGISTER (int ,int ,struct g_class*,int ) ;
 int G_RAID_DEBUG (int ,char*) ;
 int SHUTDOWN_PRI_FIRST ;
 int * g_raid_post_sync ;
 int g_raid_shutdown_post_sync ;
 int g_raid_started ;
 int shutdown_post_sync ;

__attribute__((used)) static void
g_raid_init(struct g_class *mp)
{

 g_raid_post_sync = EVENTHANDLER_REGISTER(shutdown_post_sync,
     g_raid_shutdown_post_sync, mp, SHUTDOWN_PRI_FIRST);
 if (g_raid_post_sync == ((void*)0))
  G_RAID_DEBUG(0, "Warning! Cannot register shutdown event.");
 g_raid_started = 1;
}
