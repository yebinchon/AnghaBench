
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ iov_len; int iov_base; } ;
struct TYPE_3__ {scalar_t__ iov_len; int iov_base; } ;
struct spigen_transfer {TYPE_2__ st_data; TYPE_1__ st_command; } ;
struct spi_command {scalar_t__ tx_cmd_sz; scalar_t__ rx_cmd_sz; scalar_t__ tx_data_sz; scalar_t__ rx_data_sz; int * tx_data; int * tx_cmd; int * rx_data; int * rx_cmd; } ;
struct cdev {int si_drv1; } ;
typedef int device_t ;


 int EINVAL ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int SPIBUS_TRANSFER (int ,int ,struct spi_command*) ;
 struct spi_command SPI_COMMAND_INITIALIZER ;
 int copyin (int ,int *,scalar_t__) ;
 int copyout (int *,int ,scalar_t__) ;
 int device_get_parent (int ) ;
 int device_printf (int ,char*,int ,scalar_t__,int ,scalar_t__) ;
 int free (int *,int ) ;
 void* malloc (scalar_t__,int ,int ) ;

__attribute__((used)) static int
spigen_transfer(struct cdev *cdev, struct spigen_transfer *st)
{
 struct spi_command transfer = SPI_COMMAND_INITIALIZER;
 device_t dev = cdev->si_drv1;
 int error = 0;






 if (st->st_command.iov_len == 0)
  return (EINVAL);

 transfer.tx_cmd = transfer.rx_cmd = malloc(st->st_command.iov_len,
     M_DEVBUF, M_WAITOK);
 if (st->st_data.iov_len > 0) {
  transfer.tx_data = transfer.rx_data = malloc(st->st_data.iov_len,
      M_DEVBUF, M_WAITOK);
 }
 else
  transfer.tx_data = transfer.rx_data = ((void*)0);

 error = copyin(st->st_command.iov_base, transfer.tx_cmd,
     transfer.tx_cmd_sz = transfer.rx_cmd_sz = st->st_command.iov_len);
 if ((error == 0) && (st->st_data.iov_len > 0))
  error = copyin(st->st_data.iov_base, transfer.tx_data,
      transfer.tx_data_sz = transfer.rx_data_sz =
                            st->st_data.iov_len);
 if (error == 0)
  error = SPIBUS_TRANSFER(device_get_parent(dev), dev, &transfer);
 if (error == 0) {
  error = copyout(transfer.rx_cmd, st->st_command.iov_base,
      transfer.rx_cmd_sz);
  if ((error == 0) && (st->st_data.iov_len > 0))
   error = copyout(transfer.rx_data, st->st_data.iov_base,
       transfer.rx_data_sz);
 }

 free(transfer.tx_cmd, M_DEVBUF);
 free(transfer.tx_data, M_DEVBUF);
 return (error);
}
