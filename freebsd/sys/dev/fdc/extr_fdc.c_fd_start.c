
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct fdc_data {int dummy; } ;
struct fd_data {int sectorsize; TYPE_3__* ft; struct fdc_data* fdc; } ;
struct bio {scalar_t__ bio_cmd; int bio_pblkno; int bio_offset; int bio_length; int bio_resid; struct fd_data* bio_driver1; TYPE_2__* bio_to; } ;
struct TYPE_6__ {int heads; int sectrac; } ;
struct TYPE_5__ {TYPE_1__* geom; } ;
struct TYPE_4__ {struct fd_data* softc; } ;


 scalar_t__ BIO_GETATTR ;
 scalar_t__ BIO_READ ;
 scalar_t__ BIO_WRITE ;
 int ENOIOCTL ;
 int EOPNOTSUPP ;
 int fd_enqueue (struct fd_data*,struct bio*) ;
 scalar_t__ g_handleattr_int (struct bio*,char*,int ) ;
 int g_io_deliver (struct bio*,int ) ;

__attribute__((used)) static void
fd_start(struct bio *bp)
{
  struct fdc_data * fdc;
  struct fd_data * fd;

 fd = bp->bio_to->geom->softc;
 fdc = fd->fdc;
 bp->bio_driver1 = fd;
 if (bp->bio_cmd == BIO_GETATTR) {
  if (g_handleattr_int(bp, "GEOM::fwsectors", fd->ft->sectrac))
   return;
  if (g_handleattr_int(bp, "GEOM::fwheads", fd->ft->heads))
   return;
  g_io_deliver(bp, ENOIOCTL);
  return;
 }
 if (!(bp->bio_cmd == BIO_READ || bp->bio_cmd == BIO_WRITE)) {
  g_io_deliver(bp, EOPNOTSUPP);
  return;
 }
 bp->bio_pblkno = bp->bio_offset / fd->sectorsize;
 bp->bio_resid = bp->bio_length;
 fd_enqueue(fd, bp);
 return;
}
