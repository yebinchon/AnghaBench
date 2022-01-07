
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct g_raid_volume {scalar_t__ v_mediasize; int v_sectorsize; } ;
struct g_raid_softc {int dummy; } ;
struct g_provider {int name; struct g_raid_volume* private; } ;
struct TYPE_2__ {scalar_t__ mediaoffset; scalar_t__ mediasize; int maxiosize; int blocksize; struct g_raid_volume* priv; int dumper; } ;
struct g_kerneldump {scalar_t__ offset; scalar_t__ length; TYPE_1__ di; } ;
struct bio {struct g_provider* bio_to; scalar_t__ bio_data; } ;
typedef int intmax_t ;


 int DFLTPHYS ;
 int G_T_TOPOLOGY ;
 int g_io_deliver (struct bio*,int ) ;
 int g_raid_dump ;
 int g_trace (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void
g_raid_kerneldump(struct g_raid_softc *sc, struct bio *bp)
{
 struct g_kerneldump *gkd;
 struct g_provider *pp;
 struct g_raid_volume *vol;

 gkd = (struct g_kerneldump*)bp->bio_data;
 pp = bp->bio_to;
 vol = pp->private;
 g_trace(G_T_TOPOLOGY, "g_raid_kerneldump(%s, %jd, %jd)",
  pp->name, (intmax_t)gkd->offset, (intmax_t)gkd->length);
 gkd->di.dumper = g_raid_dump;
 gkd->di.priv = vol;
 gkd->di.blocksize = vol->v_sectorsize;
 gkd->di.maxiosize = DFLTPHYS;
 gkd->di.mediaoffset = gkd->offset;
 if ((gkd->offset + gkd->length) > vol->v_mediasize)
  gkd->length = vol->v_mediasize - gkd->offset;
 gkd->di.mediasize = gkd->length;
 g_io_deliver(bp, 0);
}
