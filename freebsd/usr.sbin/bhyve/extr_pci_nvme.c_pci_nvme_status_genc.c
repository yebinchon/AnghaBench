
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int NVME_SCT_GENERIC ;
 int pci_nvme_status_tc (int *,int ,int ) ;

__attribute__((used)) static __inline void
pci_nvme_status_genc(uint16_t *status, uint16_t code)
{

 pci_nvme_status_tc(status, NVME_SCT_GENERIC, code);
}
