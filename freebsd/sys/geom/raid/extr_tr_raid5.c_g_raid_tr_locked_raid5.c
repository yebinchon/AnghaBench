
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_raid_tr_object {int dummy; } ;
struct g_raid_subdisk {int dummy; } ;
struct bio {scalar_t__ bio_caller1; } ;


 int g_raid_subdisk_iostart (struct g_raid_subdisk*,struct bio*) ;

__attribute__((used)) static int
g_raid_tr_locked_raid5(struct g_raid_tr_object *tr, void *argp)
{
 struct bio *bp;
 struct g_raid_subdisk *sd;

 bp = (struct bio *)argp;
 sd = (struct g_raid_subdisk *)bp->bio_caller1;
 g_raid_subdisk_iostart(sd, bp);

 return (0);
}
