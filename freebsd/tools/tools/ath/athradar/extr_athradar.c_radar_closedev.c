
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radarhandler {int s; } ;


 int close (int) ;

void
radar_closedev(struct radarhandler *radar)
{
 close(radar->s);
 radar->s = -1;
}
