
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_class {int dummy; } ;


 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int * g_mirror_post_sync ;
 int shutdown_post_sync ;

__attribute__((used)) static void
g_mirror_fini(struct g_class *mp)
{

 if (g_mirror_post_sync != ((void*)0))
  EVENTHANDLER_DEREGISTER(shutdown_post_sync, g_mirror_post_sync);
}
