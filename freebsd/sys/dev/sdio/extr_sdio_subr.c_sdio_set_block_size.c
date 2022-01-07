
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct sdio_func {int fn; int cur_blksize; int dev; } ;
typedef int device_t ;


 int EOPNOTSUPP ;
 int SDIO_WRITE_DIRECT (int ,int ,scalar_t__,int) ;
 scalar_t__ SD_IO_FBR_IOBLKSZ ;
 int SD_IO_FBR_START ;
 int device_get_parent (int ) ;
 int htole16 (int) ;
 int sdio_get_support_multiblk (int ) ;

int
sdio_set_block_size(struct sdio_func *f, uint16_t bs)
{
 device_t pdev;
 int error;
 uint32_t addr;
 uint16_t v;

 if (!sdio_get_support_multiblk(f->dev))
  return (EOPNOTSUPP);

 pdev = device_get_parent(f->dev);
 addr = SD_IO_FBR_START * f->fn + SD_IO_FBR_IOBLKSZ;
 v = htole16(bs);

 error = SDIO_WRITE_DIRECT(pdev, 0, addr, v & 0xff);
 if (error == 0)
  error = SDIO_WRITE_DIRECT(pdev, 0, addr + 1,
      (v >> 8) & 0xff);
 if (error == 0)
  f->cur_blksize = bs;

 return (error);
}
