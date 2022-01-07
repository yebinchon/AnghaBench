
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct octeon_device {int device; } ;


 int PCIEM_CTL_INITIATE_FLR ;
 int PCIEM_STA_TRANSACTION_PND ;
 int PCIER_DEVICE_CTL ;
 int PCIER_DEVICE_STA ;
 int PCIM_CMD_INTxDIS ;
 int PCIR_COMMAND ;
 int PCIY_EXPRESS ;
 int lio_dev_info (struct octeon_device*,char*) ;
 int lio_mdelay (int) ;
 int pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,int,int) ;
 int pci_restore_state (int ) ;
 int pci_save_state (int ) ;
 int pci_write_config (int ,int,int ,int) ;

__attribute__((used)) static void
lio_pci_flr(struct octeon_device *oct)
{
 uint32_t exppos, status;

 pci_find_cap(oct->device, PCIY_EXPRESS, &exppos);

 pci_save_state(oct->device);


 pci_write_config(oct->device, PCIR_COMMAND, PCIM_CMD_INTxDIS, 2);


 lio_mdelay(100);

 status = pci_read_config(oct->device, exppos + PCIER_DEVICE_STA, 2);
 if (status & PCIEM_STA_TRANSACTION_PND) {
  lio_dev_info(oct, "Function reset incomplete after 100ms, sleeping for 5 seconds\n");
  lio_mdelay(5);

  status = pci_read_config(oct->device, exppos + PCIER_DEVICE_STA, 2);
  if (status & PCIEM_STA_TRANSACTION_PND)
   lio_dev_info(oct, "Function reset still incomplete after 5s, reset anyway\n");
 }

 pci_write_config(oct->device, exppos + PCIER_DEVICE_CTL, PCIEM_CTL_INITIATE_FLR, 2);
 lio_mdelay(100);

 pci_restore_state(oct->device);
}
