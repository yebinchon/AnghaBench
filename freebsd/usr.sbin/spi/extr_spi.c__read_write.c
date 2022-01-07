
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_2__ {int iov_len; void* iov_base; } ;
struct spigen_transfer {TYPE_1__ st_command; } ;
typedef int spi ;


 int SPIGENIOC_TRANSFER ;
 int bzero (struct spigen_transfer*,int) ;
 int errno ;
 int fprintf (int ,char*,int) ;
 scalar_t__ ioctl (int,int ,struct spigen_transfer*) ;
 int memcpy (void*,void*,int) ;
 size_t* reversebits ;
 int stderr ;

__attribute__((used)) static int
_read_write(int hdev, void *bufw, void *bufr, int cbrw, int lsb)
{
 int err, ctr;
 struct spigen_transfer spi;

 if (!cbrw)
  return 0;

 if (!bufr)
  bufr = bufw;
 else
  memcpy(bufr, bufw, cbrw);


 bzero(&spi, sizeof(spi));



 spi.st_command.iov_base = bufr;
 spi.st_command.iov_len = cbrw;
 err = ioctl(hdev, SPIGENIOC_TRANSFER, &spi) < 0 ? -1 : 0;

 if (!err && lsb) {

  for (ctr = 0; ctr < cbrw; ctr++) {
   ((uint8_t *) bufr)[ctr] =
       reversebits[((uint8_t *)bufr)[ctr]];
  }
 }

 if (err)
  fprintf(stderr, "Error performing SPI transaction, errno=%d\n",
      errno);

 return err;
}
