
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int * g_raid_post_sync ;
 scalar_t__ g_raid_started ;
 int shutdown_post_sync ;

__attribute__((used)) static void
g_raid_fini(struct g_class *mp)
{

 if (g_raid_post_sync != ((void*)0))
  EVENTHANDLER_DEREGISTER(shutdown_post_sync, g_raid_post_sync);
 g_raid_started = 0;
}
