
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ mediaoffset; scalar_t__ mediasize; int maxiosize; int blocksize; struct disk* priv; int * dumper; } ;
struct g_kerneldump {scalar_t__ offset; scalar_t__ length; TYPE_2__ di; } ;
struct g_geom {int name; } ;
struct disk {scalar_t__ d_mediasize; int d_maxsize; int d_sectorsize; int * d_dump; } ;
struct bio {TYPE_1__* bio_to; scalar_t__ bio_data; } ;
typedef int intmax_t ;
struct TYPE_3__ {struct g_geom* geom; } ;


 int ENODEV ;
 int G_T_TOPOLOGY ;
 int g_io_deliver (struct bio*,int ) ;
 int g_trace (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void
g_disk_kerneldump(struct bio *bp, struct disk *dp)
{
 struct g_kerneldump *gkd;
 struct g_geom *gp;

 gkd = (struct g_kerneldump*)bp->bio_data;
 gp = bp->bio_to->geom;
 g_trace(G_T_TOPOLOGY, "g_disk_kerneldump(%s, %jd, %jd)",
  gp->name, (intmax_t)gkd->offset, (intmax_t)gkd->length);
 if (dp->d_dump == ((void*)0)) {
  g_io_deliver(bp, ENODEV);
  return;
 }
 gkd->di.dumper = dp->d_dump;
 gkd->di.priv = dp;
 gkd->di.blocksize = dp->d_sectorsize;
 gkd->di.maxiosize = dp->d_maxsize;
 gkd->di.mediaoffset = gkd->offset;
 if ((gkd->offset + gkd->length) > dp->d_mediasize)
  gkd->length = dp->d_mediasize - gkd->offset;
 gkd->di.mediasize = gkd->length;
 g_io_deliver(bp, 0);
}
