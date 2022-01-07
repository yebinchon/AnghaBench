
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {int d_destroyed; int * d_devstat; } ;


 int M_WAITOK ;
 int devstat_remove_entry (int *) ;
 int g_cancel_event (struct disk*) ;
 int g_disk_destroy ;
 int g_post_event (int ,struct disk*,int ,int *) ;

void
disk_destroy(struct disk *dp)
{

 g_cancel_event(dp);
 dp->d_destroyed = 1;
 if (dp->d_devstat != ((void*)0))
  devstat_remove_entry(dp->d_devstat);
 g_post_event(g_disk_destroy, dp, M_WAITOK, ((void*)0));
}
