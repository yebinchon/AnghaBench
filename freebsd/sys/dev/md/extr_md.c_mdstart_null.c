
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_s {int dummy; } ;
struct bio {int bio_cmd; scalar_t__ bio_resid; int bio_length; int bio_data; } ;




 int bzero (int ,int ) ;
 int cpu_flush_dcache (int ,int ) ;

__attribute__((used)) static int
mdstart_null(struct md_s *sc, struct bio *bp)
{

 switch (bp->bio_cmd) {
 case 129:
  bzero(bp->bio_data, bp->bio_length);
  cpu_flush_dcache(bp->bio_data, bp->bio_length);
  break;
 case 128:
  break;
 }
 bp->bio_resid = 0;
 return (0);
}
