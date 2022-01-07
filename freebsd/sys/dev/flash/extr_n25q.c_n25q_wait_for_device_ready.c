
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int CMD_READ_STATUS ;
 int QSPI_READ_REG (int ,int ,int ,int*,int) ;
 int STATUS_WIP ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
n25q_wait_for_device_ready(device_t dev)
{
 device_t pdev;
 uint8_t status;
 int err;

 pdev = device_get_parent(dev);

 do {
  err = QSPI_READ_REG(pdev, dev, CMD_READ_STATUS, &status, 1);
 } while (err == 0 && (status & STATUS_WIP));

 return (err);
}
