
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;


 int NVME_STATUS_P ;

__attribute__((used)) static __inline void
pci_nvme_toggle_phase(uint16_t *status, int prev)
{

 if (prev)
  *status &= ~NVME_STATUS_P;
 else
  *status |= NVME_STATUS_P;
}
