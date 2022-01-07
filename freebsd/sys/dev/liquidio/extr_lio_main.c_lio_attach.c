
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned long long uint64_t ;
typedef int uint32_t ;
struct octeon_device {int rx_pause; int tx_pause; int status; int * droq; int * watchdog_task; int device; int msix_on; int rx_budget; int tx_budget; } ;
typedef int device_t ;


 int EIO ;
 int ENOMEM ;
 int LIO_CN23XX_SLI_SCRATCH1 ;
 int LIO_DEFAULT_RX_PKTS_PROCESS_BUDGET ;
 int LIO_DEFAULT_TX_PKTS_PROCESS_BUDGET ;
 scalar_t__ LIO_DEV_CORE_OK ;
 int LIO_FLAG_MSIX_ENABLED ;
 int LIO_NIC_STARTER_TIMEOUT ;
 scalar_t__ LIO_STARTER_POLL_INTERVAL_MS ;
 scalar_t__ atomic_load_acq_int (int *) ;
 scalar_t__ cold ;
 int device_printf (int ,char*) ;
 int kproc_create (int ,struct octeon_device*,int **,int ,int ,char*,int ,int ,int ) ;
 int kproc_resume (int *) ;
 struct octeon_device* lio_allocate_device (int ) ;
 int lio_detach (int ) ;
 int lio_dev_dbg (struct octeon_device*,char*) ;
 int lio_dev_err (struct octeon_device*,char*) ;
 int lio_dev_info (struct octeon_device*,char*,int ,int ,int ,int ,int ) ;
 scalar_t__ lio_device_init (struct octeon_device*) ;
 int lio_droq_bh (int ,int ) ;
 int lio_mdelay (scalar_t__) ;
 int lio_nic_starter (struct octeon_device*) ;
 unsigned long long lio_read_csr64 (struct octeon_device*,int ) ;
 int lio_watchdog ;
 int lio_write_csr64 (struct octeon_device*,int ,unsigned long long) ;
 int pci_get_bus (int ) ;
 int pci_get_device (int ) ;
 int pci_get_function (int ) ;
 int pci_get_slot (int ) ;
 int pci_get_vendor (int ) ;

__attribute__((used)) static int
lio_attach(device_t device)
{
 struct octeon_device *oct_dev = ((void*)0);
 uint64_t scratch1;
 uint32_t error;
 int timeout, ret = 1;
 uint8_t bus, dev, function;

 oct_dev = lio_allocate_device(device);
 if (oct_dev == ((void*)0)) {
  device_printf(device, "Error: Unable to allocate device\n");
  return (-ENOMEM);
 }

 oct_dev->tx_budget = LIO_DEFAULT_TX_PKTS_PROCESS_BUDGET;
 oct_dev->rx_budget = LIO_DEFAULT_RX_PKTS_PROCESS_BUDGET;
 oct_dev->msix_on = LIO_FLAG_MSIX_ENABLED;

 oct_dev->device = device;
 bus = pci_get_bus(device);
 dev = pci_get_slot(device);
 function = pci_get_function(device);

 lio_dev_info(oct_dev, "Initializing device %x:%x %02x:%02x.%01x\n",
       pci_get_vendor(device), pci_get_device(device), bus, dev,
       function);

 if (lio_device_init(oct_dev)) {
  lio_dev_err(oct_dev, "Failed to init device\n");
  lio_detach(device);
  return (-ENOMEM);
 }

 scratch1 = lio_read_csr64(oct_dev, LIO_CN23XX_SLI_SCRATCH1);
 if (!(scratch1 & 4ULL)) {





  scratch1 |= 4ULL;
  lio_write_csr64(oct_dev, LIO_CN23XX_SLI_SCRATCH1, scratch1);

  error = kproc_create(lio_watchdog, oct_dev,
         &oct_dev->watchdog_task, 0, 0,
         "liowd/%02hhx:%02hhx.%hhx", bus,
         dev, function);
  if (!error) {
   kproc_resume(oct_dev->watchdog_task);
  } else {
   oct_dev->watchdog_task = ((void*)0);
   lio_dev_err(oct_dev,
        "failed to create kernel_thread\n");
   lio_detach(device);
   return (-1);
  }
 }
 oct_dev->rx_pause = 1;
 oct_dev->tx_pause = 1;

 timeout = 0;
 while (timeout < LIO_NIC_STARTER_TIMEOUT) {
  lio_mdelay(LIO_STARTER_POLL_INTERVAL_MS);
  timeout += LIO_STARTER_POLL_INTERVAL_MS;





  if (cold)
   lio_droq_bh(oct_dev->droq[0], 0);

  if (atomic_load_acq_int(&oct_dev->status) == LIO_DEV_CORE_OK) {
   ret = lio_nic_starter(oct_dev);
   break;
  }
 }

 if (ret) {
  lio_dev_err(oct_dev, "Firmware failed to start\n");
  lio_detach(device);
  return (-EIO);
 }

 lio_dev_dbg(oct_dev, "Device is ready\n");

 return (0);
}
