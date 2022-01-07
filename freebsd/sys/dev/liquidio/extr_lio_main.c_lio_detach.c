
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long uint64_t ;
struct octeon_device {scalar_t__ app_mode; scalar_t__ watchdog_task; } ;
typedef int device_t ;


 int LIO_CN23XX_SLI_SCRATCH1 ;
 scalar_t__ LIO_DRV_NIC_APP ;
 struct octeon_device* device_get_softc (int ) ;
 int kproc_suspend (scalar_t__,int ) ;
 int lio_destroy_resources (struct octeon_device*) ;
 int lio_dev_dbg (struct octeon_device*,char*) ;
 int lio_dev_info (struct octeon_device*,char*) ;
 int lio_free_device_mem (struct octeon_device*) ;
 unsigned long long lio_read_csr64 (struct octeon_device*,int ) ;
 int lio_stop_nic_module (struct octeon_device*) ;
 int lio_write_csr64 (struct octeon_device*,int ,unsigned long long) ;

__attribute__((used)) static int
lio_detach(device_t dev)
{
 struct octeon_device *oct_dev = device_get_softc(dev);

 lio_dev_dbg(oct_dev, "Stopping device\n");
 if (oct_dev->watchdog_task) {
  uint64_t scratch1;

  kproc_suspend(oct_dev->watchdog_task, 0);

  scratch1 = lio_read_csr64(oct_dev, LIO_CN23XX_SLI_SCRATCH1);
  scratch1 &= ~4ULL;
  lio_write_csr64(oct_dev, LIO_CN23XX_SLI_SCRATCH1, scratch1);
 }

 if (oct_dev->app_mode && (oct_dev->app_mode == LIO_DRV_NIC_APP))
  lio_stop_nic_module(oct_dev);





 lio_destroy_resources(oct_dev);

 lio_dev_info(oct_dev, "Device removed\n");





 lio_free_device_mem(oct_dev);
 return (0);
}
