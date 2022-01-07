
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {int * d_geom; scalar_t__ d_destroyed; } ;


 int g_disk_resize ;
 int g_post_event (int ,struct disk*,int,int *) ;

int
disk_resize(struct disk *dp, int flag)
{

 if (dp->d_destroyed || dp->d_geom == ((void*)0))
  return (0);

 return (g_post_event(g_disk_resize, dp, flag, ((void*)0)));
}
