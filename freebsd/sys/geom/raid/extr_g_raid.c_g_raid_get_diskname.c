
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct g_raid_disk {TYPE_2__* d_consumer; } ;
struct TYPE_4__ {TYPE_1__* provider; } ;
struct TYPE_3__ {char const* name; } ;



const char *
g_raid_get_diskname(struct g_raid_disk *disk)
{

 if (disk->d_consumer == ((void*)0) || disk->d_consumer->provider == ((void*)0))
  return ("[unknown]");
 return (disk->d_consumer->provider->name);
}
