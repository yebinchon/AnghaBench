
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spigen_transfer_mmapped {scalar_t__ stm_command_length; scalar_t__ stm_data_length; } ;
struct spigen_mmap {scalar_t__ bufsize; scalar_t__ kvaddr; } ;
struct spi_command {scalar_t__ tx_cmd_sz; scalar_t__ rx_cmd_sz; scalar_t__ tx_data_sz; scalar_t__ rx_data_sz; void* rx_data; void* tx_data; void* rx_cmd; void* tx_cmd; } ;
struct cdev {int si_drv1; } ;
typedef int device_t ;


 int E2BIG ;
 int SPIBUS_TRANSFER (int ,int ,struct spi_command*) ;
 struct spi_command SPI_COMMAND_INITIALIZER ;
 int devfs_get_cdevpriv (void**) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
spigen_transfer_mmapped(struct cdev *cdev, struct spigen_transfer_mmapped *stm)
{
 struct spi_command transfer = SPI_COMMAND_INITIALIZER;
 device_t dev = cdev->si_drv1;
 struct spigen_mmap *mmap;
 int error;

 if ((error = devfs_get_cdevpriv((void **)&mmap)) != 0)
  return (error);

 if (mmap->bufsize < stm->stm_command_length + stm->stm_data_length)
  return (E2BIG);

 transfer.tx_cmd = transfer.rx_cmd = (void *)((uintptr_t)mmap->kvaddr);
 transfer.tx_cmd_sz = transfer.rx_cmd_sz = stm->stm_command_length;
 transfer.tx_data = transfer.rx_data =
     (void *)((uintptr_t)mmap->kvaddr + stm->stm_command_length);
 transfer.tx_data_sz = transfer.rx_data_sz = stm->stm_data_length;
 error = SPIBUS_TRANSFER(device_get_parent(dev), dev, &transfer);

 return (error);
}
