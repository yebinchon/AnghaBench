
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int bio_cmd; } ;






 int EOPNOTSUPP ;
 int g_bde_start1 (struct bio*) ;
 int g_io_deliver (struct bio*,int ) ;

__attribute__((used)) static void
g_bde_start(struct bio *bp)
{

 switch (bp->bio_cmd) {
 case 131:
 case 129:
 case 128:
  g_bde_start1(bp);
  break;
 case 130:
  g_io_deliver(bp, EOPNOTSUPP);
  break;
 default:
  g_io_deliver(bp, EOPNOTSUPP);
  return;
 }
 return;
}
