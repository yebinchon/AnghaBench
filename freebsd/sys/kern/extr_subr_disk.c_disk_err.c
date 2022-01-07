
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bio {int bio_cmd; int bio_bcount; scalar_t__ bio_pblkno; TYPE_1__* bio_disk; int * bio_dev; } ;
typedef int intmax_t ;
typedef scalar_t__ daddr_t ;
struct TYPE_2__ {char* d_name; char* d_unit; } ;







 int DEV_BSIZE ;
 char* devtoname (int *) ;
 int printf (char*,...) ;

void
disk_err(struct bio *bp, const char *what, int blkdone, int nl)
{
 daddr_t sn;

 if (bp->bio_dev != ((void*)0))
  printf("%s: %s ", devtoname(bp->bio_dev), what);
 else if (bp->bio_disk != ((void*)0))
  printf("%s%d: %s ",
      bp->bio_disk->d_name, bp->bio_disk->d_unit, what);
 else
  printf("disk??: %s ", what);
 switch(bp->bio_cmd) {
 case 129: printf("cmd=read "); break;
 case 128: printf("cmd=write "); break;
 case 132: printf("cmd=delete "); break;
 case 130: printf("cmd=getattr "); break;
 case 131: printf("cmd=flush "); break;
 default: printf("cmd=%x ", bp->bio_cmd); break;
 }
 sn = bp->bio_pblkno;
 if (bp->bio_bcount <= DEV_BSIZE) {
  printf("fsbn %jd%s", (intmax_t)sn, nl ? "\n" : "");
  return;
 }
 if (blkdone >= 0) {
  sn += blkdone;
  printf("fsbn %jd of ", (intmax_t)sn);
 }
 printf("%jd-%jd", (intmax_t)bp->bio_pblkno,
     (intmax_t)(bp->bio_pblkno + (bp->bio_bcount - 1) / DEV_BSIZE));
 if (nl)
  printf("\n");
}
