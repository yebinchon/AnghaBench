
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * dumper; } ;
struct TYPE_6__ {TYPE_1__ di; int length; scalar_t__ offset; } ;
struct g_raid_disk {int d_softc; int d_candelete; TYPE_3__ d_kd; struct g_consumer* d_consumer; } ;
struct g_consumer {TYPE_2__* provider; } ;
struct TYPE_5__ {int name; } ;


 int G_RAID_DEBUG1 (int,int ,char*,int ,int) ;
 int OFF_MAX ;
 int g_getattr (char*,struct g_consumer*,int *) ;
 int g_io_getattr (char*,struct g_consumer*,int*,TYPE_3__*) ;

void
g_raid_get_disk_info(struct g_raid_disk *disk)
{
 struct g_consumer *cp = disk->d_consumer;
 int error, len;


 disk->d_kd.offset = 0;
 disk->d_kd.length = OFF_MAX;
 len = sizeof(disk->d_kd);
 error = g_io_getattr("GEOM::kerneldump", cp, &len, &disk->d_kd);
 if (error)
  disk->d_kd.di.dumper = ((void*)0);
 if (disk->d_kd.di.dumper == ((void*)0))
  G_RAID_DEBUG1(2, disk->d_softc,
      "Dumping not supported by %s: %d.",
      cp->provider->name, error);


 error = g_getattr("GEOM::candelete", cp, &disk->d_candelete);
 if (error)
  disk->d_candelete = 0;
 if (!disk->d_candelete)
  G_RAID_DEBUG1(2, disk->d_softc,
      "BIO_DELETE not supported by %s: %d.",
      cp->provider->name, error);
}
