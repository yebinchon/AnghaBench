
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk {int d_maxsize; int d_delmaxsize; } ;
struct bio {scalar_t__ bio_cmd; } ;
typedef int off_t ;


 scalar_t__ BIO_DELETE ;

__attribute__((used)) static off_t
g_disk_maxsize(struct disk *dp, struct bio *bp)
{
 if (bp->bio_cmd == BIO_DELETE)
  return (dp->d_delmaxsize);
 return (dp->d_maxsize);
}
