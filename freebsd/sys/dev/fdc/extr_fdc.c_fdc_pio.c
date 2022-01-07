
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
typedef int u_char ;
struct fdc_data {int * ioff; int * ioh; int iot; TYPE_1__* fd; struct bio* bp; } ;
struct bio {scalar_t__ bio_cmd; } ;
struct TYPE_2__ {int fd_iosize; int * fd_ioptr; } ;


 scalar_t__ BIO_READ ;
 size_t FD_YE_DATAPORT ;
 int bus_space_read_multi_1 (int ,int ,int ,int *,int ) ;
 int bus_space_write_multi_1 (int ,int ,int ,int *,int ) ;
 int fdbcdr_wr (struct fdc_data*,int ,int ) ;

__attribute__((used)) static void
fdc_pio(struct fdc_data *fdc)
{
 u_char *cptr;
 struct bio *bp;
 u_int count;

 bp = fdc->bp;
 cptr = fdc->fd->fd_ioptr;
 count = fdc->fd->fd_iosize;

 if (bp->bio_cmd == BIO_READ) {
  fdbcdr_wr(fdc, 0, count);
  bus_space_read_multi_1(fdc->iot, fdc->ioh[FD_YE_DATAPORT],
      fdc->ioff[FD_YE_DATAPORT], cptr, count);
 } else {
  bus_space_write_multi_1(fdc->iot, fdc->ioh[FD_YE_DATAPORT],
      fdc->ioff[FD_YE_DATAPORT], cptr, count);
  fdbcdr_wr(fdc, 0, count);
 }
}
