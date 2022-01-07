
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {scalar_t__ bio_offset; scalar_t__ bio_length; } ;
typedef scalar_t__ off_t ;



__attribute__((used)) static int
g_raid_bio_overlaps(const struct bio *bp, off_t lstart, off_t len)
{
 off_t lend = lstart + len - 1;
 off_t bstart = bp->bio_offset;
 off_t bend = bp->bio_offset + bp->bio_length - 1;

 if (bend < lstart)
  return (0);
 if (lend < bstart)
  return (0);
 return (1);
}
